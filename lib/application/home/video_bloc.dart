import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../domain/repositories/home/video_repository.dart';
import 'video_event.dart';
import 'video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final IVideoRepository repository;
  YoutubePlayerController? _playerController;

  YoutubePlayerController? get controller => _playerController;

  VideoBloc(this.repository) : super(const VideoState.initial()) {
    on<VideoEvent>((event, emit) async {
      await event.when(
        fetchVideos: () async {
          emit(const VideoState.loading());
          try {
            final videos = await repository.getVideos();
            emit(VideoState.loaded(videos));
          } catch (e) {
            emit(VideoState.error(e.toString()));
          }
        },
        playVideo: (videoId) async {
          _playerController?.dispose();
          _playerController = YoutubePlayerController(
            initialVideoId: videoId,
            flags: const YoutubePlayerFlags(autoPlay: true),
          );
          // Note: No new state is emitted here since UI reacts via controller
        },
      );
    });
  }

  @override
  Future<void> close() {
    _playerController?.dispose();
    return super.close();
  }
}
