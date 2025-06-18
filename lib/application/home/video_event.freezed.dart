// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchVideos,
    required TResult Function(String videoId) playVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchVideos,
    TResult? Function(String videoId)? playVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchVideos,
    TResult Function(String videoId)? playVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVideos value) fetchVideos,
    required TResult Function(_PlayVideo value) playVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVideos value)? fetchVideos,
    TResult? Function(_PlayVideo value)? playVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVideos value)? fetchVideos,
    TResult Function(_PlayVideo value)? playVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEventCopyWith<$Res> {
  factory $VideoEventCopyWith(
          VideoEvent value, $Res Function(VideoEvent) then) =
      _$VideoEventCopyWithImpl<$Res, VideoEvent>;
}

/// @nodoc
class _$VideoEventCopyWithImpl<$Res, $Val extends VideoEvent>
    implements $VideoEventCopyWith<$Res> {
  _$VideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchVideosImplCopyWith<$Res> {
  factory _$$FetchVideosImplCopyWith(
          _$FetchVideosImpl value, $Res Function(_$FetchVideosImpl) then) =
      __$$FetchVideosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchVideosImplCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$FetchVideosImpl>
    implements _$$FetchVideosImplCopyWith<$Res> {
  __$$FetchVideosImplCopyWithImpl(
      _$FetchVideosImpl _value, $Res Function(_$FetchVideosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchVideosImpl implements _FetchVideos {
  const _$FetchVideosImpl();

  @override
  String toString() {
    return 'VideoEvent.fetchVideos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchVideosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchVideos,
    required TResult Function(String videoId) playVideo,
  }) {
    return fetchVideos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchVideos,
    TResult? Function(String videoId)? playVideo,
  }) {
    return fetchVideos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchVideos,
    TResult Function(String videoId)? playVideo,
    required TResult orElse(),
  }) {
    if (fetchVideos != null) {
      return fetchVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVideos value) fetchVideos,
    required TResult Function(_PlayVideo value) playVideo,
  }) {
    return fetchVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVideos value)? fetchVideos,
    TResult? Function(_PlayVideo value)? playVideo,
  }) {
    return fetchVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVideos value)? fetchVideos,
    TResult Function(_PlayVideo value)? playVideo,
    required TResult orElse(),
  }) {
    if (fetchVideos != null) {
      return fetchVideos(this);
    }
    return orElse();
  }
}

abstract class _FetchVideos implements VideoEvent {
  const factory _FetchVideos() = _$FetchVideosImpl;
}

/// @nodoc
abstract class _$$PlayVideoImplCopyWith<$Res> {
  factory _$$PlayVideoImplCopyWith(
          _$PlayVideoImpl value, $Res Function(_$PlayVideoImpl) then) =
      __$$PlayVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$PlayVideoImplCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$PlayVideoImpl>
    implements _$$PlayVideoImplCopyWith<$Res> {
  __$$PlayVideoImplCopyWithImpl(
      _$PlayVideoImpl _value, $Res Function(_$PlayVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$PlayVideoImpl(
      null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayVideoImpl implements _PlayVideo {
  const _$PlayVideoImpl(this.videoId);

  @override
  final String videoId;

  @override
  String toString() {
    return 'VideoEvent.playVideo(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayVideoImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayVideoImplCopyWith<_$PlayVideoImpl> get copyWith =>
      __$$PlayVideoImplCopyWithImpl<_$PlayVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchVideos,
    required TResult Function(String videoId) playVideo,
  }) {
    return playVideo(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchVideos,
    TResult? Function(String videoId)? playVideo,
  }) {
    return playVideo?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchVideos,
    TResult Function(String videoId)? playVideo,
    required TResult orElse(),
  }) {
    if (playVideo != null) {
      return playVideo(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchVideos value) fetchVideos,
    required TResult Function(_PlayVideo value) playVideo,
  }) {
    return playVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchVideos value)? fetchVideos,
    TResult? Function(_PlayVideo value)? playVideo,
  }) {
    return playVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchVideos value)? fetchVideos,
    TResult Function(_PlayVideo value)? playVideo,
    required TResult orElse(),
  }) {
    if (playVideo != null) {
      return playVideo(this);
    }
    return orElse();
  }
}

abstract class _PlayVideo implements VideoEvent {
  const factory _PlayVideo(final String videoId) = _$PlayVideoImpl;

  String get videoId;
  @JsonKey(ignore: true)
  _$$PlayVideoImplCopyWith<_$PlayVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
