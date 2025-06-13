import 'package:flutter/material.dart';

class YAvatarList extends StatelessWidget {
  final List<String> channels = List.generate(20, (index) => 'Channel $index');

  YAvatarList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: channels.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[700],
                  backgroundImage: AssetImage('assets/images/avathar.jpg'),
                ),
                const SizedBox(height: 5),
                Text(
                  channels[index],
                  style: const TextStyle(fontSize: 12, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
