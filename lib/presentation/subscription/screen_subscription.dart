import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/widgets/appbar.dart';

class ScreenSubscription extends StatelessWidget {
  const ScreenSubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: YAppBar(title: 'YouTube'),
      ),
      body: Center(child: Text('ScreenSubscription')),
    );
  }
}
