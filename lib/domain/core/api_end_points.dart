import 'package:youtube_clone/core/strings.dart';
import 'package:youtube_clone/infrastructure/api_key.dart';

class ApiEndpoints {
  static const String baseUrl = yBaseUrl;

  /// Home feed
  static String homeVideos({int maxResults = 10, String? pageToken}) {
    final base =
        '$baseUrl/videos?part=snippet,statistics,contentDetails'
        '&chart=mostPopular'
        '&maxResults=$maxResults'
        '&regionCode=IN'
        '&key=$apiKey';
    return pageToken != null ? '$base&pageToken=$pageToken' : base;
  }

  /// Video detail by ID (with snippet, statistics, etc.)
  static String videoDetails(String id) =>
      '$baseUrl/videos?part=snippet,statistics,contentDetails&id=$id&key=$apiKey';

  /// Search videos
  static String searchVideos(String query, {String? pageToken}) {
    final base =
        '$baseUrl/search?part=snippet&type=video&q=$query&maxResults=10&key=$apiKey';
    return pageToken != null ? '$base&pageToken=$pageToken' : base;
  }

  /// Trending videos (alias of homeVideos)
  static String trendingVideos({int maxResults = 10, String? pageToken}) =>
      homeVideos(maxResults: maxResults, pageToken: pageToken);

  /// Channel details (for avatar, name, etc.)
  static String channelDetails(String channelId) =>
      '$baseUrl/channels?part=snippet,statistics&id=$channelId&key=$apiKey';

  /// Videos uploaded by a channel
  static String channelVideos(String channelId, {String? pageToken}) {
    final base =
        '$baseUrl/search?part=snippet&channelId=$channelId&order=date&type=video&maxResults=10&key=$apiKey';
    return pageToken != null ? '$base&pageToken=$pageToken' : base;
  }

  /// Comments for a video
  static String videoComments(String videoId, {String? pageToken}) {
    final base =
        '$baseUrl/commentThreads?part=snippet&videoId=$videoId&maxResults=10&key=$apiKey';
    return pageToken != null ? '$base&pageToken=$pageToken' : base;
  }
}
