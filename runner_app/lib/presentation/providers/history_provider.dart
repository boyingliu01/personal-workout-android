import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:strength_app/data/repositories/training_storage.dart';
import 'package:strength_app/domain/entities/training_session.dart';

class HistoryState {
  final List<TrainingSession> sessions;
  final bool isLoading;
  final String? error;

  const HistoryState({
    this.sessions = const [],
    this.isLoading = false,
    this.error,
  });

  HistoryState copyWith({
    List<TrainingSession>? sessions,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return HistoryState(
      sessions: sessions ?? this.sessions,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

class HistoryNotifier extends StateNotifier<HistoryState> {
  final TrainingStorage storage;

  HistoryNotifier({required this.storage}) : super(const HistoryState()) {
    _loadSessions();
  }

  Future<void> _loadSessions() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final sessions = storage.getAllSessions();
      state = state.copyWith(sessions: sessions, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    await _loadSessions();
  }

  Future<void> deleteSession(String id) async {
    try {
      await storage.deleteSession(id);
      await _loadSessions();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }
}

final historyProvider =
    StateNotifierProvider<HistoryNotifier, HistoryState>(
  (ref) => HistoryNotifier(
    storage: TrainingStorage(box: Hive.box<String>('sessions')),
  ),
);
