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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: YAppBar(title: 'YouTube'),
      ),
      body: Column(
        children: [
          YAvatarList(),
          YCustomChip(),
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
