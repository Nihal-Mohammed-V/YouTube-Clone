import 'package:youtube_clone/domain/home/video.dart';

abstract class IVideoRepository {
  Future<List<Video>> getVideos();
}
