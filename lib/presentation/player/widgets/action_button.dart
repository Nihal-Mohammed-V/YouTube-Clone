import 'package:flutter/material.dart';

class VideoActions extends StatelessWidget {
  const VideoActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            _ActionChipWithLikeDislike(likeCount: '12K'),
            _ActionChip(icon: Icons.share_outlined, label: 'Share'),
            _ActionChip(icon: Icons.download_outlined, label: 'Download'),
            _ActionChip(icon: Icons.content_cut, label: 'Clip'),
            _ActionChip(icon: Icons.save_alt_outlined, label: 'Save'),
            _ActionChip(icon: Icons.flag_outlined, label: 'Report'),
          ],
        ),
      ),
    );
  }
}

class _ActionChipWithLikeDislike extends StatelessWidget {
  final String likeCount;

  const _ActionChipWithLikeDislike({required this.likeCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.thumb_up_alt_outlined, size: 20, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            likeCount,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
          const SizedBox(width: 10),
          Container(height: 20, width: 1, color: Colors.white24),
          const SizedBox(width: 10),
          Icon(Icons.thumb_down_alt_outlined, size: 20, color: Colors.white),
        ],
      ),
    );
  }
}

class _ActionChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.white),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
