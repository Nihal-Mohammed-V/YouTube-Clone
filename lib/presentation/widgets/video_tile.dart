import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:youtube_clone/application/home/video_bloc.dart';
import 'package:youtube_clone/application/home/video_event.dart';
import 'package:youtube_clone/domain/home/video.dart';
import 'package:youtube_clone/presentation/player/screen_player.dart';

class VideoTile extends StatelessWidget {
  final Video video;

  const VideoTile({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Thumbnail
        GestureDetector(
          onTap: () {
            // Trigger play event in BLoC
            context.read<VideoBloc>().add(VideoEvent.playVideo(video.id));

            // Navigate to the video player screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ScreenPlayer()),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
              video.thumbnailUrl,
              width: double.infinity,
              height: 235,
              fit: BoxFit.cover,
            ),
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
