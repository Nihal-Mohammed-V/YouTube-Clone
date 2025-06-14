import 'package:flutter/material.dart';

class ProfileChip extends StatelessWidget {
  ProfileChip({super.key});
  final List<Map<String, dynamic>> categories = [
    {'label': 'Switch Accounts', 'icon': Icons.switch_account_outlined},
    {'label': 'Google Account', 'icon': Icons.account_circle_outlined},
    {'label': 'Turn on Incognito', 'icon': Icons.visibility_off_outlined},
    {'label': 'Share channel', 'icon': Icons.share_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children:
              categories.map((category) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Chip(
                    backgroundColor: Colors.grey[850],
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.transparent),
                    ),
                    label: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(category['icon'], color: Colors.white, size: 16),
                        SizedBox(width: 4),
                        Text(
                          category['label'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.5,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
