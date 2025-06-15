import 'package:flutter/material.dart';
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
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => VideoTile(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
