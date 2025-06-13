import 'package:flutter/material.dart';
import 'package:youtube_clone/core/colors/colors.dart';
import 'package:youtube_clone/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ytclone',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        textTheme: TextTheme(
          bodySmall: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenMainPage(),
    );
  }
}
