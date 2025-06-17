import 'package:youtube_clone/domain/home/video.dart';

class VideoModel {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelName;
  final String duration;
  final String views;
  final String uploadDate;

  VideoModel({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelName,
    required this.duration,
    required this.views,
    required this.uploadDate,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
      id: json['id'],
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
      channelName: json['channelName'],
      duration: json['duration'],
      views: json['views'],
      uploadDate: json['uploadDate'],
    );
  }

  Video toDomain() {
    return Video(
      id: id,
      title: title,
      thumbnailUrl: thumbnailUrl,
      channelName: channelName,
      duration: duration,
      views: views,
      uploadDate: uploadDate,
    );
  }
}
