import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_clone/domain/core/api_end_points.dart';
import 'package:youtube_clone/domain/home/video.dart';
import 'package:youtube_clone/domain/repositories/home/video_repository.dart';

class VideoRepositoryImpl implements IVideoRepository {
  @override
  Future<List<Video>> getVideos() async {
    final homeApi = ApiEndpoints.homeVideos;
    final response = await http.get(Uri.parse(homeApi));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List videosJson = data['items'];

      return videosJson.map<Video>((item) {
        final snippet = item['snippet'];

        return Video(
          id: item['id'],
          title: snippet['title'],
          thumbnailUrl: snippet['thumbnails']['high']['url'],
          channelName: snippet['channelTitle'],
          duration: 'Unknown', // Need separate API call to get duration
          views: 'N/A', // Not included in this endpoint
          uploadDate: snippet['publishedAt'],
        );
      }).toList();
    } else {
      throw Exception('Failed to load videos: ${response.statusCode}');
    }
  }
}
