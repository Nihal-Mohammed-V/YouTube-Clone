import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/application/home/video_bloc.dart';
import 'package:youtube_clone/application/home/video_state.dart';
import 'package:youtube_clone/presentation/subscription/widgets/scrollable_avathar.dart';
import 'package:youtube_clone/presentation/widgets/appbar.dart';
import 'package:youtube_clone/presentation/widgets/custom_chip.dart';
import 'package:youtube_clone/presentation/widgets/shimmers.dart';
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
            loading:
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    // Avatar shimmer row
                    SizedBox(
                      height: 104,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        itemCount: 8,
                        separatorBuilder: (_, __) => const SizedBox(width: 12),
                        itemBuilder:
                            (context, index) => Column(
                              children: const [
                                YShimmerEffect(
                                  width: 64,
                                  height: 64,
                                  radius: 32,
                                ),
                                SizedBox(height: 8),
                                YShimmerEffect(width: 48, height: 12),
                              ],
                            ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Filter chip shimmer
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Wrap(
                        spacing: 8,
                        children: List.generate(
                          4,
                          (index) => const YShimmerEffect(
                            width: 80,
                            height: 32,
                            radius: 20,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Shimmer video tiles
                    Expanded(
                      child: ListView.separated(
                        itemCount: 6,
                        separatorBuilder: (_, __) => const SizedBox(height: 12),
                        itemBuilder:
                            (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  YShimmerEffect(
                                    width: double.infinity,
                                    height: 200,
                                  ),
                                  SizedBox(height: 8),
                                  YShimmerEffect(width: 150, height: 20),
                                  SizedBox(height: 4),
                                  YShimmerEffect(width: 100, height: 16),
                                ],
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
            loaded:
                (videos) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: YAvatarList(videos: videos),
                    ),
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
