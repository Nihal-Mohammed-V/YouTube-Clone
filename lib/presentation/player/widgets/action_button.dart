import 'package:flutter/material.dart';

class VideoActions extends StatelessWidget {
  const VideoActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _ActionButton(icon: Icons.thumb_up, label: '12K'),
          _ActionButton(icon: Icons.thumb_down, label: 'Dislike'),
          _ActionButton(icon: Icons.share, label: 'Share'),
          _ActionButton(icon: Icons.download, label: 'Download'),
          _ActionButton(icon: Icons.save_alt, label: 'Save'),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}
