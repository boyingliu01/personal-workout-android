import 'package:flutter/material.dart';

class AudioController extends StatelessWidget {
  final bool isMuted;
  final VoidCallback onToggleMute;

  const AudioController({
    super.key,
    required this.isMuted,
    required this.onToggleMute,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isMuted ? Icons.volume_off : Icons.volume_up),
      onPressed: onToggleMute,
      tooltip: isMuted ? '取消静音' : '静音',
      iconSize: 20,
    );
  }
}
