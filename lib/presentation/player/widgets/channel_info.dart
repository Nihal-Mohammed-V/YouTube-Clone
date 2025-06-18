import 'package:flutter/material.dart';

class ChannelInfo extends StatelessWidget {
  const ChannelInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/youtube.png'),
      ),
      title: const Text("Channel Name", style: TextStyle(color: Colors.white)),
      subtitle: const Text(
        "1.5M subscribers",
        style: TextStyle(color: Colors.grey),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: const Text(
          "SUBSCRIBE",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
