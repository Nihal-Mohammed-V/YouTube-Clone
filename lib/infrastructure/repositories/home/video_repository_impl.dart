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
        print('No items found in channel response');
        return '';
      }
    } else {
      print('Failed to fetch channel details: ${response.body}');
      return '';
    }
  }

  @override
  Future<List<Video>> getVideos() async {
    print('getVideos() called');
    final homeApi = ApiEndpoints.homeVideos();
    print('Fetching videos from API: $homeApi');

    final response = await http.get(Uri.parse(homeApi));
    print('Response status: ${response.statusCode}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Decoded JSON data: $data');

      final List videosJson = data['items'];
      print('Extracted ${videosJson.length} videos');

      final videos = await Future.wait(
        videosJson.map<Future<Video>>((item) async {
          final snippet = item['snippet'];
          final channelId = snippet['channelId'];
          String channelAvatar = '';

          try {
            channelAvatar = await getChannelAvatar(channelId);
          } catch (e) {
            print('Error fetching avatar: $e');
          }

          return Video(
            id: item['id'] is String ? item['id'] : item['id']['videoId'] ?? '',
            title: snippet['title'] ?? '',
            thumbnailUrl: snippet['thumbnails']?['high']?['url'] ?? '',
            channelName: snippet['channelTitle'] ?? '',
            duration: 'Unknown',
            views: 'N/A',
            uploadDate: snippet['publishedAt'] ?? '',
            channelAvatarUrl: channelAvatar,
          );
        }).toList(),
      );

      return videos;
    } else {
      print(
        'Failed to fetch videos. Status: ${response.statusCode}, Body: ${response.body}',
      );
      throw Exception('Failed to load videos: ${response.statusCode}');
    }
  }
}
