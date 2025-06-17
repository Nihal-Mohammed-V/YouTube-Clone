import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required String id,
    required String title,
    required String thumbnailUrl,
    required String channelName,
    required String duration,
    required String views,
    required String uploadDate,
    required String channelAvatarUrl,
  }) = _Video;
  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
