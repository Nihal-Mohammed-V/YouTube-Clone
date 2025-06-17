import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:youtube_clone/domain/home/video.dart';

class VideoTile extends StatelessWidget {
  final Video video;

  const VideoTile({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Thumbnail
        ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: Image.network(
            video.thumbnailUrl,
            width: double.infinity,
            height: 235,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),

        // Info Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Channel Avatar
              CircleAvatar(
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

              const SizedBox(width: 10),

              // Title & Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      video.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${video.channelName} • ${video.views} views • ${timeago.format(DateTime.parse(video.uploadDate))}',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),

              // More Options (optional)
              Icon(Icons.more_vert, color: Colors.white),
            ],
          ),
        ),

        const SizedBox(height: 16),
      ],
    );
  }
}
