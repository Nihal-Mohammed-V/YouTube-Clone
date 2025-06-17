import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_clone/domain/home/video.dart';

part 'video_state.freezed.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = _Initial;
  const factory VideoState.loading() = _Loading;
  const factory VideoState.loaded(List<Video> videos) = _Loaded;
  const factory VideoState.error(String message) = _Error;
}
