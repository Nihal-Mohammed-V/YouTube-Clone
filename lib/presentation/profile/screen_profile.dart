import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/profile/widget/appbar.dart';
import 'package:youtube_clone/presentation/profile/widget/history_section.dart';
import 'package:youtube_clone/presentation/profile/widget/list_tile.dart';
import 'package:youtube_clone/presentation/profile/widget/playlist_section.dart';
import 'package:youtube_clone/presentation/profile/widget/profile_chip.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileSection(),
            ProfileChip(),
            HistorySection(),
            const SizedBox(height: 8),
            PlaylistSection(),
            const SizedBox(height: 16),
            const ListTileWidget(),
          ],
        ),
      ),
    );
  }
}
