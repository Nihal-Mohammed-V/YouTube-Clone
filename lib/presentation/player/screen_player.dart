import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/application/home/video_bloc.dart';
import 'package:youtube_clone/presentation/player/widgets/action_button.dart';
import 'package:youtube_clone/presentation/player/widgets/channel_info.dart';
import 'package:youtube_clone/presentation/player/widgets/video_details.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenPlayer extends StatelessWidget {
  const ScreenPlayer({super.key});

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
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                player,
                const VideoDetails(),
                const VideoActions(),
                const Divider(color: Colors.grey, height: 20),
                const ChannelInfo(),
              ],
            ),
          ),
        );
      },
    );
  }
}
