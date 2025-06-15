import 'package:flutter/material.dart';

class TopBottomLeftWidget extends StatelessWidget {
  const TopBottomLeftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          right: 4,
          child: Row(
            children: const [
              Icon(Icons.search, color: Colors.white, size: 28),
              SizedBox(width: 16),
              Icon(Icons.more_vert, color: Colors.white, size: 28),
            ],
          ),
        ),
        Positioned(
          right: 4,
          bottom: 8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.thumb_up_outlined, color: Colors.white, size: 30),
              SizedBox(height: 4),
              Text('1.2K', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              Icon(Icons.thumb_down_outlined, color: Colors.white, size: 30),
              SizedBox(height: 4),
              Text('Dislike', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              Icon(Icons.comment_outlined, color: Colors.white, size: 30),
              SizedBox(height: 4),
              Text('345', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              Icon(Icons.share, color: Colors.white, size: 30),
              SizedBox(height: 4),
              Text('Share', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              Icon(Icons.visibility_outlined, color: Colors.white, size: 30),
              SizedBox(height: 4),
              Text('12 Lakh', style: TextStyle(color: Colors.white)),
              SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/youtube.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
