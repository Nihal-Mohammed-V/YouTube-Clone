import 'package:youtube_clone/core/strings.dart';
import 'package:youtube_clone/infrastructure/api_key.dart';

class ApiEndpoints {
  static const String baseUrl = yBaseUrl;

  // Home feed videos
  static const String homeVideos =
      '$baseUrl/videos?part=snippet&chart=mostPopular&maxResults=10&regionCode=IN&key=$apiKey';

  // Video detail by ID
  static String videoDetails(String id) => '$baseUrl/videos/$id';

  // Search videos
  static String searchVideos(String query) => '$baseUrl/search?q=$query';

  // Trending videos
  static const String trendingVideos = '$baseUrl/videos/trending';

  // Channel details
  static String channelDetails(String channelId) =>
      '$baseUrl/channels/$channelId';

  // Channel videos
  static String channelVideos(String channelId) =>
      '$baseUrl/channels/$channelId/videos';

  // Comments for a video
  static String videoComments(String videoId) =>
      '$baseUrl/videos/$videoId/comments';

  // Post a new comment
  static String postComment(String videoId) =>
      '$baseUrl/videos/$videoId/comments';

  // Like a video
  static String likeVideo(String videoId) => '$baseUrl/videos/$videoId/like';

  // Dislike a video
  static String dislikeVideo(String videoId) =>
      '$baseUrl/videos/$videoId/dislike';

  // Subscribe to channel
  static String subscribeChannel(String channelId) =>
      '$baseUrl/channels/$channelId/subscribe';

  // Unsubscribe from channel
  static String unsubscribeChannel(String channelId) =>
      '$baseUrl/channels/$channelId/unsubscribe';

  // Upload a new video
  static const String uploadVideo = '$baseUrl/videos/upload';

  // Auth endpoints (if applicable)
  static const String login = '$baseUrl/auth/login';
  static const String register = '$baseUrl/auth/register';
  static const String logout = '$baseUrl/auth/logout';
}
