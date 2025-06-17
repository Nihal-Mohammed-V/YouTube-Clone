import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_clone/application/home/video_bloc.dart';
import 'package:youtube_clone/application/home/video_event.dart';
import 'package:youtube_clone/core/colors/colors.dart';
import 'package:youtube_clone/infrastructure/repositories/home/video_repository_impl.dart';
import 'package:youtube_clone/presentation/main_page/screen_main_page.dart';

void main() {
  final videoRepository = VideoRepositoryImpl();

  runApp(
    BlocProvider(
      create:
          (_) =>
              VideoBloc(videoRepository)..add(const VideoEvent.fetchVideos()),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ytclone',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: ScreenMainPage(),
    );
  }
}
