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
          appBar: AppBar(title: const Text("Now Playing")),
          body: player,
        );
      },
    );
  }
}
