import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:strength_app/domain/entities/training_session.dart';

/// Storage service for training sessions using Hive.
class TrainingStorage {
  final Box<String> box;

  TrainingStorage({required this.box});

  Future<void> saveSession(TrainingSession session) async {
    await box.put(session.id, _encodeSession(session));
  }

  List<TrainingSession> getAllSessions() {
    final sessions = <TrainingSession>[];
    for (var i = 0; i < box.length; i++) {
      final key = box.keyAt(i);
      final jsonStr = box.get(key);
      if (jsonStr != null) {
        sessions.add(_decodeSession(jsonStr));
      }
    }
    // Sort by startTime descending
    sessions.sort((a, b) => b.startTime.compareTo(a.startTime));
    return sessions;
  }

  TrainingSession? getSession(String id) {
    final jsonStr = box.get(id);
    if (jsonStr == null) return null;
    return _decodeSession(jsonStr);
  }

  Future<void> deleteSession(String id) async {
    await box.delete(id);
  }

  String _encodeSession(TrainingSession session) {
    return jsonEncode({
      'id': session.id,
      'workoutId': session.workoutId,
      'workoutName': session.workoutName,
      'startTime': session.startTime.toIso8601String(),
      'endTime': session.endTime?.toIso8601String(),
      'completedExercises': session.completedExercises,
      'totalExercises': session.totalExercises,
      'totalSeconds': session.totalSeconds,
      'exerciseLogs': session.exerciseLogs
          .map(
            (log) => {
              'exerciseId': log.exerciseId,
              'exerciseName': log.exerciseName,
              'actualSeconds': log.actualSeconds,
              'completed': log.completed,
            },
          )
          .toList(),
      'status': session.status.name,
      'currentExerciseIndex': session.currentExerciseIndex,
      'remainingSeconds': session.remainingSeconds,
    });
  }

  TrainingSession _decodeSession(String jsonStr) {
    final map = jsonDecode(jsonStr) as Map<String, dynamic>;
    return TrainingSession(
      id: map['id'] as String,
      workoutId: map['workoutId'] as String,
      workoutName: map['workoutName'] as String,
      startTime: DateTime.parse(map['startTime'] as String),
      endTime: map['endTime'] != null
          ? DateTime.parse(map['endTime'] as String)
          : null,
      completedExercises: map['completedExercises'] as int,
      totalExercises: map['totalExercises'] as int,
      totalSeconds: map['totalSeconds'] as int,
      exerciseLogs: (map['exerciseLogs'] as List)
          .map(
            (log) => ExerciseLog(
              exerciseId: log['exerciseId'] as String,
              exerciseName: log['exerciseName'] as String,
              actualSeconds: log['actualSeconds'] as int,
              completed: log['completed'] as bool,
            ),
          )
          .toList(),
      status: map['status'] != null
          ? SessionStatus.values.firstWhere(
              (s) => s.name == map['status'],
              orElse: () => SessionStatus.completed,
            )
          : SessionStatus.completed,
      currentExerciseIndex: map['currentExerciseIndex'] as int?,
      remainingSeconds: map['remainingSeconds'] as int?,
    );
  }

  /// Save an interrupted/paused session for later recovery.
  Future<void> saveInterruptedSession(TrainingSession session) async {
    final interruptedSession = session.copyWith(
      status: session.status == SessionStatus.completed
          ? SessionStatus.interrupted
          : session.status,
    );
    await box.put('interrupted_${interruptedSession.id}', _encodeSession(interruptedSession));
  }

  /// Get the most recent interrupted session, if any.
  TrainingSession? getInterruptedSession() {
    for (var i = 0; i < box.length; i++) {
      final key = box.keyAt(i);
      if (key.toString().startsWith('interrupted_')) {
        final jsonStr = box.get(key);
        if (jsonStr != null) {
          return _decodeSession(jsonStr);
        }
      }
    }
    return null;
  }

  /// Clear the interrupted session after recovery or discard.
  Future<void> clearInterruptedSession() async {
    final keysToRemove = <String>[];
    for (var i = 0; i < box.length; i++) {
      final key = box.keyAt(i);
      if (key.toString().startsWith('interrupted_')) {
        keysToRemove.add(key.toString());
      }
    }
    for (final key in keysToRemove) {
      await box.delete(key);
    }
  }
}
