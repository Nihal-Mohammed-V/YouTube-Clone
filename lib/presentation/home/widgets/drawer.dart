import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YTDrawer extends StatelessWidget {
  const YTDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275,
      child: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: Image.asset('assets/images/youtube.png'),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'YouTube',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildDrawerItem(
                    Icons.local_fire_department_outlined,
                    'Trending',
                  ),
                  _buildDrawerItem(Icons.local_mall_outlined, 'Shopping'),
                  _buildDrawerItem(Icons.music_note_outlined, 'Music'),
                  _buildDrawerItem(Icons.movie_outlined, 'Films'),
                  _buildDrawerItem(Icons.sensors, 'Live'),
                  _buildDrawerItem(Icons.sports_esports_outlined, 'Gaming'),
                  _buildDrawerItem(Icons.newspaper_outlined, 'News'),
                  _buildDrawerItem(Icons.sports_soccer_outlined, 'Sport'),
                  _buildDrawerItem(Icons.school_outlined, 'Courses'),
                  _buildDrawerItem(
                    Icons.dry_cleaning_outlined,
                    'Fashion & Beauty',
                  ),
                  _buildDrawerItem(Icons.podcasts_outlined, 'Podcasts'),
                  const Divider(color: Colors.white24),
                  _buildBrandItem('YouTube Premium'),
                  _buildBrandItem('YouTube Studio'),
                  _buildBrandItem('YouTube Music'),
                  _buildBrandItem('YouTube Kids'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {},
    );
  }

  Widget _buildBrandItem(String label) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 35,
            height: 35,
            child: Image.asset('assets/images/youtube.png'),
          ),
        ),
        Text(label, style: GoogleFonts.poppins(color: Colors.white)),
      ],
    );
  }
}
