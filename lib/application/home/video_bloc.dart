import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/home/video_repository.dart';
import 'video_event.dart';
import 'video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final IVideoRepository repository;

  VideoBloc(this.repository) : super(const VideoState.initial()) {
    on<VideoEvent>((event, emit) async {
      print('VideoEvent received: $event');

      await event.when(
        fetchVideos: () async {
          print('fetchVideos called');
          emit(const VideoState.loading());

          try {
            final videos = await repository.getVideos();
            print('Fetched ${videos.length} videos');
            emit(VideoState.loaded(videos));
          } catch (e) {
            print('Error occurred: $e');
            emit(VideoState.error(e.toString()));
          }
        },
      );
    });
  }
}
