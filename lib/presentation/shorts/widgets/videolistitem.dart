import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/shorts/widgets/bottom_details.dart';
import 'package:youtube_clone/presentation/shorts/widgets/top_bottom_left.dart';

class Videolistitem extends StatelessWidget {
  final int index;
  const Videolistitem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.accents[index % Colors.accents.length],
        ),
        const TopBottomLeftWidget(),
        const BottomDetails(),
      ],
    );
  }
}
