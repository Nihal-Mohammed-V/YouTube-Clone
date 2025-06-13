import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YAppBar extends StatelessWidget implements PreferredSizeWidget {
  const YAppBar({super.key, required this.title});
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(56); // Default AppBar height

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      color: Colors.black,
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 35,
                  height: 35,
                  child: Image.asset('assets/images/youtube.png'),
                ),
                SizedBox(width: 2),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.cast, color: Colors.white, size: 28),
                SizedBox(width: 16),
                Icon(Icons.notifications_none, color: Colors.white, size: 28),
                SizedBox(width: 16),
                Icon(Icons.search, color: Colors.white, size: 28),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
