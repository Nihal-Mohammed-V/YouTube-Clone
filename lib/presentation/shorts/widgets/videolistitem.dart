import 'package:flutter/material.dart';

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

        Positioned(
          left: 16,
          bottom: 20,
          right: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                '@channelname',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'This is a short description of the short video...',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.music_note, color: Colors.white70, size: 16),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'Original Sound - Channel',
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Positioned(
          right: 12,
          bottom: 80,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.thumb_up_outlined, color: Colors.white, size: 30),
              SizedBox(height: 8),
              Text('1.2K', style: TextStyle(color: Colors.white)),
              SizedBox(height: 20),
              Icon(Icons.thumb_down_outlined, color: Colors.white, size: 30),
              SizedBox(height: 8),
              Text('Dislike', style: TextStyle(color: Colors.white)),
              SizedBox(height: 20),
              Icon(Icons.comment_outlined, color: Colors.white, size: 30),
              SizedBox(height: 8),
              Text('345', style: TextStyle(color: Colors.white)),
              SizedBox(height: 20),
              Icon(Icons.share, color: Colors.white, size: 30),
              SizedBox(height: 8),
              Text('Share', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
