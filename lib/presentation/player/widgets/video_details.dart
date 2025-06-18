import 'package:flutter/material.dart';

class VideoDetails extends StatelessWidget {
  const VideoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(
            "Video Title Goes Here",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "123K views • 2 hours ago",
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ),
        Divider(color: Colors.grey, height: 20),
      ],
    );
  }
}
