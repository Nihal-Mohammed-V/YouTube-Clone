import 'package:flutter/material.dart';

class SAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      color: Colors.black,
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: const [
                Icon(Icons.cast, color: Colors.white, size: 28),
                SizedBox(width: 16),
                Icon(Icons.notifications_none, color: Colors.white, size: 28),
                SizedBox(width: 16),
                Icon(Icons.search_outlined, color: Colors.white, size: 28),
                SizedBox(width: 16),
                Icon(Icons.settings_outlined, color: Colors.white, size: 28),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
