import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/shorts/widgets/videolistitem.dart';

class ScreenShort extends StatelessWidget {
  const ScreenShort({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return Videolistitem(index: index);
          }),
        ),
      ),
    );
  }
}
