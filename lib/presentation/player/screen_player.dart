import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/application/home/video_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YTVideoPlayerScreen extends StatelessWidget {
  const YTVideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<VideoBloc>().controller;

    if (controller == null) {
      return const Scaffold(body: Center(child: Text("No video selected")));
    }

    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text("YouTube"),
            backgroundColor: Colors.black,
            elevation: 0,
            actions: const [
              Icon(Icons.cast, color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.notifications_none, color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.search, color: Colors.white),
              SizedBox(width: 16),
              CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage(
                  'assets/user_avatar.png',
                ), // Placeholder
              ),
              SizedBox(width: 12),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              player,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  "Video Title Goes Here",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "123K views • 2 hours ago",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              const Divider(color: Colors.grey, height: 20),
              Padding(
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
              ),
              const Divider(color: Colors.grey, height: 20),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/channel_avatar.png',
                  ), // Placeholder
                ),
                title: const Text(
                  "Channel Name",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: const Text(
                  "1.5M subscribers",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "SUBSCRIBE",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
