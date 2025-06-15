import 'package:flutter/material.dart';

class BottomDetails extends StatelessWidget {
  const BottomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      bottom: 10,
      right: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(radius: 18),
              const SizedBox(width: 8),
              Text(
                '@Nihal',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Text('Subscribe', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Discription for the short video which laskdjvbabvo aisuvb uahsvuf as pashv poahv aoshdvh  ',
            style: TextStyle(color: Colors.white, fontSize: 14),

            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.music_note, color: Colors.white, size: 16),
              SizedBox(width: 4),
              Expanded(
                child: Text(
                  'MONTAGE (Slowed) - ',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
