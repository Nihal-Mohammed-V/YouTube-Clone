import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/application/home/video_bloc.dart';
import 'package:youtube_clone/application/home/video_state.dart';
import 'package:youtube_clone/presentation/subscription/widgets/scrollable_avathar.dart';
import 'package:youtube_clone/presentation/widgets/appbar.dart';
import 'package:youtube_clone/presentation/widgets/custom_chip.dart';
import 'package:youtube_clone/presentation/widgets/video_tile.dart';

class ScreenSubscription extends StatelessWidget {
  const ScreenSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: YAppBar(title: 'YouTube'),
      ),
      body: BlocBuilder<VideoBloc, VideoState>(
        builder: (context, state) {
          print('Current state: $state');
          return state.when(
            initial: () => const Center(child: Text('Initializing...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded:
                (videos) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: YAvatarList(videos: videos),
                    ),

                    // Filter Chips
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: YCustomChip(),
                    ),

                    const SizedBox(height: 4),

                    Expanded(
                      child: ListView.builder(
                        itemCount: videos.length,
                        itemBuilder:
                            (context, index) => VideoTile(video: videos[index]),
                      ),
                    ),
                  ],
                ),
            error: (msg) => Center(child: Text('Error: $msg')),
          );
        },
      ),
    );
  }
}
