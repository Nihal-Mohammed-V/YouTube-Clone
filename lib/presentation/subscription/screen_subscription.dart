import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/application/home/video_bloc.dart';
import 'package:youtube_clone/application/home/video_event.dart';
import 'package:youtube_clone/application/home/video_state.dart';
import 'package:youtube_clone/domain/repositories/home/video_repository.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatars (Subscribed channels)
          const SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: YAvatarList(),
          ),

          // Filter Chips
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: YCustomChip(),
          ),

          // Video feed
          const SizedBox(height: 12),

          BlocProvider(
            create:
                (context) =>
                    VideoBloc(context.read<IVideoRepository>())
                      ..add(const VideoEvent.fetchVideos()),
            child: Expanded(
              child: BlocBuilder<VideoBloc, VideoState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(child: Text('Initializing...')),
                    loading:
                        () => const Center(child: CircularProgressIndicator()),
                    loaded:
                        (videos) => ListView.builder(
                          itemCount: videos.length,
                          itemBuilder:
                              (context, index) =>
                                  VideoTile(video: videos[index]),
                        ),
                    error: (msg) => Center(child: Text('Error: $msg')),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
