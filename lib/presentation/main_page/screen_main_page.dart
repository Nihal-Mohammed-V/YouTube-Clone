import 'package:flutter/material.dart';
import 'package:youtube_clone/presentation/home/screen_home.dart';
import 'package:youtube_clone/presentation/home/widgets/drawer.dart';
import 'package:youtube_clone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:youtube_clone/presentation/profile/screen_profile.dart';
import 'package:youtube_clone/presentation/shorts/screen_short.dart';
import 'package:youtube_clone/presentation/subscription/screen_subscription.dart';
import 'package:youtube_clone/presentation/upload/screen_upload.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    ScreenHome(),
    ScreenShort(),
    ScreenUpload(),
    ScreenSubscription(),
    ScreenProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: YTDrawer(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: YBottomNavigation(),
    );
  }
}
