import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ExerciseVideoPlayer extends StatelessWidget {
  final VideoPlayerController? controller;
  final bool isLoading;
  final bool hasError;
  final String? imagePath;

  const ExerciseVideoPlayer({
    super.key,
    this.controller,
    this.isLoading = false,
    this.hasError = false,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller != null && !isLoading && !hasError
          ? () {
              if (controller!.value.isPlaying) {
                controller!.pause();
              } else {
                controller!.play();
              }
            }
          : null,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (isLoading) {
      return const _LoadingView();
    }

    if (hasError || controller == null) {
      return _ErrorFallback(imagePath: imagePath);
    }

    return VideoPlayer(controller!);
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: Colors.white,
          ),
          SizedBox(height: 16),
          Text(
            '加载动作视频...',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class _ErrorFallback extends StatelessWidget {
  final String? imagePath;

  const _ErrorFallback({this.imagePath});

  @override
  Widget build(BuildContext context) {
    if (imagePath != null) {
      return Image.asset(
        imagePath!,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return const _PlaceholderIcon();
        },
      );
    }

    return const _PlaceholderIcon();
  }
}

class _PlaceholderIcon extends StatelessWidget {
  const _PlaceholderIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      child: const Center(
        child: Icon(
          Icons.videocam_off,
          size: 64,
          color: Colors.grey,
        ),
      ),
    );
  }
}
