import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTile(Icons.slideshow_outlined, 'Your vidoes'),
        _buildTile(Icons.download_outlined, 'Downloads'),
        _buildTile(Icons.badge_outlined, 'Badges'),
        const Divider(color: Colors.white24),
        _buildTile(Icons.movie_creation_outlined, 'Your movies'),
        _buildTile(Icons.play_circle_outline_outlined, 'Get YouTube Premium'),
        const Divider(color: Colors.white24),
        _buildTile(Icons.insert_chart_outlined, 'Time Watched'),
        _buildTile(Icons.help_outline, 'Help & feedback'),
      ],
    );
  }

  Widget _buildTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: GoogleFonts.poppins(color: Colors.white)),

      onTap: () {},
    );
  }
}
