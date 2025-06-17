import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_event.freezed.dart';

@freezed
class VideoEvent with _$VideoEvent {
  const factory VideoEvent.fetchVideos() = _FetchVideos;
}
