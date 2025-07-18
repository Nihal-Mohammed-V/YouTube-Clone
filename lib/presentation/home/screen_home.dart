import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/application/home/video_bloc.dart';
import 'package:youtube_clone/application/home/video_event.dart';
import 'package:youtube_clone/application/home/video_state.dart';
import 'package:youtube_clone/presentation/widgets/custom_chip.dart';
import 'package:youtube_clone/presentation/widgets/appbar.dart';
import 'package:youtube_clone/presentation/widgets/shimmers.dart';
import 'package:youtube_clone/presentation/widgets/video_tile.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      debugPrint('Dispatching fetchVideos from StatelessWidget');
      context.read<VideoBloc>().add(const VideoEvent.fetchVideos());
    });
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: YAppBar(title: 'YouTube'),
      ),
      body: Column(
        children: [
          // Top chips and explore icon
          SizedBox(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.explore, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 8),
                  YCustomChip(),
                ],
              ),
            ),
          ),

          Expanded(
            child: BlocBuilder<VideoBloc, VideoState>(
              builder: (context, state) {
                print('Current state: $state');
                return state.when(
                  initial: () => const Center(child: Text('Initializing...')),
                  loading:
                      () => ListView.separated(
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
                                children: [
                                  const YShimmerEffect(
                                    width: double.infinity,
                                    height: 235,
                                  ),
                                  const SizedBox(height: 8),
                                  const YShimmerEffect(width: 150, height: 20),
                                  const SizedBox(height: 4),
                                  const YShimmerEffect(width: 100, height: 16),
                                ],
                              ),
                            ),
                      ),
                  loaded:
                      (videos) => ListView.builder(
                        itemCount: videos.length,
                        itemBuilder:
                            (context, index) => VideoTile(video: videos[index]),
                      ),
                  error: (msg) => Center(child: Text('Error: $msg')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
