import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_clone/domain/core/api_end_points.dart';
import 'package:youtube_clone/domain/home/video.dart';
import 'package:youtube_clone/domain/repositories/home/video_repository.dart';

class VideoRepositoryImpl implements IVideoRepository {
  Future<String> getChannelAvatar(String channelId) async {
    final url = ApiEndpoints.channelDetails(channelId);
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final items = data['items'] as List?;
      if (items != null && items.isNotEmpty) {
        final thumbnails = items[0]['snippet']['thumbnails'];
        return thumbnails['high']?['url'] ??
            thumbnails['default']?['url'] ??
            '';
      } else {
        return '';
      }
    } else {
      return '';
    }
  }

  @override
  Future<List<Video>> getVideos() async {
    final homeApi = ApiEndpoints.homeVideos();

    final response = await http.get(Uri.parse(homeApi));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final List videosJson = data['items'];

      final videos = await Future.wait(
        videosJson.map<Future<Video>>((item) async {
          final snippet = item['snippet'];
          final statistics = item['statistics'];
          final channelId = snippet['channelId'];
          String channelAvatar = '';

          try {
            channelAvatar = await getChannelAvatar(channelId);
          } catch (e) {}

          return Video(
            id: item['id'] is String ? item['id'] : item['id']['videoId'] ?? '',
            title: snippet['title'] ?? '',
            thumbnailUrl: snippet['thumbnails']?['high']?['url'] ?? '',
            channelName: snippet['channelTitle'] ?? '',
            duration: 'Unknown',
            views: statistics['viewCount'] ?? '0',
            uploadDate: snippet['publishedAt'] ?? '',
            channelAvatarUrl: channelAvatar,
          );
        }).toList(),
      );

      return videos;
    } else {
      throw Exception('Failed to load videos: ${response.statusCode}');
    }
  }
}
