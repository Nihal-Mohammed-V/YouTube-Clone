import 'package:flutter/material.dart';
import 'package:youtube_clone/domain/home/video.dart';

class YAvatarList extends StatelessWidget {
  final List<Video> videos;
  const YAvatarList({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: SizedBox(
              width: 60,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage:
                        video.channelAvatarUrl.isNotEmpty
                            ? NetworkImage(video.channelAvatarUrl)
                            : null,
                    child:
                        video.channelAvatarUrl.isEmpty
                            ? const Icon(Icons.person, size: 20)
                            : null,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    video.channelName,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
