import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/widgets/appbar.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: YAppBar(title: ''),
      ),
      body: Center(child: Text('ScreenProfile')),
    );
  }
}
