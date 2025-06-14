import 'package:flutter/material.dart';

class PlaylistSection extends StatelessWidget {
  final List<Map<String, String>> historyVideos = [
    {
      'thumbnail': 'assets/images/youtube.png',
      'title': 'Flutter Tutorial for Beginners',
      'channel': 'Tech With Nihal',
    },
    {
      'thumbnail': 'assets/images/youtube.png',
      'title': 'Understanding Dart in 10 Minutes',
      'channel': 'Nihal4Tech',
    },
    {
      'thumbnail': 'assets/images/youtube.png',
      'title': 'Understanding Dart in 10 Minutes',
      'channel': 'Nihal Vines',
    },
    {
      'thumbnail': 'assets/images/youtube.png',
      'title': 'Understanding Dart in 10 Minutes',
      'channel': 'Nihal Vlogs',
    },
  ];
  PlaylistSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Playlists',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 35,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    side: BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 14),
                    minimumSize: Size(0, 35),
                  ),
                  child: Center(child: Text('View all')),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10),

        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: historyVideos.length,
            itemBuilder: (context, index) {
              final video = historyVideos[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        video['thumbnail']!,
                        width: 160,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 4),

                    SizedBox(
                      width: 160,
                      child: Text(
                        video['title']!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    SizedBox(
                      width: 160,
                      child: Text(
                        video['channel']!,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
