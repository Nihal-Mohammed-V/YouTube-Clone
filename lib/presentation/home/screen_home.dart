import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/widgets/video_tile.dart';
import 'package:youtube_clone/presentation/widgets/custom_chip.dart';
import 'package:youtube_clone/presentation/widgets/appbar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: YAppBar(title: 'YouTube'),
      ),
      body: Column(
        children: [
          // Horizontal Chip Bar
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
