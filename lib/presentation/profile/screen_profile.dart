import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/profile/widget/appbar.dart';
import 'package:youtube_clone/presentation/profile/widget/profile_section.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SAppBar(),
      ),
      body: ProfileSection(),
    );
  }
}
