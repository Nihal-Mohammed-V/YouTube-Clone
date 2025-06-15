import 'package:flutter/material.dart';

class VideoTile extends StatelessWidget {
  final int index;
  const VideoTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 240,
          color: Colors.primaries[index % Colors.primaries.length],
          child: const Center(
            child: Icon(Icons.play_circle, color: Colors.white, size: 40),
          ),
        ),

        ListTile(
          tileColor: Colors.black,
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/youtube.png'),
          ),
          title: Text(
            'Sample Video Title #$index',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: const Text(
            'Channel Name • 1.2M views • 3 days ago',
            style: TextStyle(color: Colors.white60, fontSize: 12),
          ),
          trailing: const Icon(Icons.more_vert, color: Colors.white),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
