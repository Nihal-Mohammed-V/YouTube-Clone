import 'package:flutter/material.dart';
import 'package:youtube_clone/domain/home/video.dart';

class ChannelInfo extends StatelessWidget {
  final Video video;
  const ChannelInfo({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage:
            (video.channelAvatarUrl.isNotEmpty)
                ? NetworkImage(video.channelAvatarUrl)
                : null,
        child:
            (video.channelAvatarUrl.isEmpty)
                ? const Icon(Icons.person, size: 20)
                : null,
      ),
      title: Text(
        '${video.channelName}',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: const Text(
        "1.5M subscribers",
        style: TextStyle(color: Colors.grey),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            side: const BorderSide(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          child: const Text('Subscribe', style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
