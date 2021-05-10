// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stream_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StreamStateTearOff {
  const _$StreamStateTearOff();

  _Initial initial({List<Image> images = const <Image>[]}) {
    return _Initial(
      images: images,
    );
  }

  _RecordDuringTimer recordDuringTimer({List<Image> images = const <Image>[]}) {
    return _RecordDuringTimer(
      images: images,
    );
  }

  _RecordAfterTimer recordAfterTimer({List<Image> images = const <Image>[]}) {
    return _RecordAfterTimer(
      images: images,
    );
  }

  _Stop stop({List<Image> images = const <Image>[]}) {
    return _Stop(
      images: images,
    );
  }

  _Error error({List<Image> images = const <Image>[], String? message}) {
    return _Error(
      images: images,
      message: message,
    );
  }
}

/// @nodoc
const $StreamState = _$StreamStateTearOff();

/// @nodoc
mixin _$StreamState {
  List<Image> get images => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Image> images) initial,
    required TResult Function(List<Image> images) recordDuringTimer,
    required TResult Function(List<Image> images) recordAfterTimer,
    required TResult Function(List<Image> images) stop,
    required TResult Function(List<Image> images, String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Image> images)? initial,
    TResult Function(List<Image> images)? recordDuringTimer,
    TResult Function(List<Image> images)? recordAfterTimer,
    TResult Function(List<Image> images)? stop,
    TResult Function(List<Image> images, String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RecordDuringTimer value) recordDuringTimer,
    required TResult Function(_RecordAfterTimer value) recordAfterTimer,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RecordDuringTimer value)? recordDuringTimer,
    TResult Function(_RecordAfterTimer value)? recordAfterTimer,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreamStateCopyWith<StreamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamStateCopyWith<$Res> {
  factory $StreamStateCopyWith(
          StreamState value, $Res Function(StreamState) then) =
      _$StreamStateCopyWithImpl<$Res>;
  $Res call({List<Image> images});
}

/// @nodoc
class _$StreamStateCopyWithImpl<$Res> implements $StreamStateCopyWith<$Res> {
  _$StreamStateCopyWithImpl(this._value, this._then);

  final StreamState _value;
  // ignore: unused_field
  final $Res Function(StreamState) _then;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $StreamStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<Image> images});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$StreamStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_Initial(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({this.images = const <Image>[]});

  @JsonKey(defaultValue: const <Image>[])
  @override
  final List<Image> images;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreamState.initial(images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreamState.initial'))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Image> images) initial,
    required TResult Function(List<Image> images) recordDuringTimer,
    required TResult Function(List<Image> images) recordAfterTimer,
    required TResult Function(List<Image> images) stop,
    required TResult Function(List<Image> images, String? message) error,
  }) {
    return initial(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Image> images)? initial,
    TResult Function(List<Image> images)? recordDuringTimer,
    TResult Function(List<Image> images)? recordAfterTimer,
    TResult Function(List<Image> images)? stop,
    TResult Function(List<Image> images, String? message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RecordDuringTimer value) recordDuringTimer,
    required TResult Function(_RecordAfterTimer value) recordAfterTimer,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RecordDuringTimer value)? recordDuringTimer,
    TResult Function(_RecordAfterTimer value)? recordAfterTimer,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StreamState {
  const factory _Initial({List<Image> images}) = _$_Initial;

  @override
  List<Image> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RecordDuringTimerCopyWith<$Res>
    implements $StreamStateCopyWith<$Res> {
  factory _$RecordDuringTimerCopyWith(
          _RecordDuringTimer value, $Res Function(_RecordDuringTimer) then) =
      __$RecordDuringTimerCopyWithImpl<$Res>;
  @override
  $Res call({List<Image> images});
}

/// @nodoc
class __$RecordDuringTimerCopyWithImpl<$Res>
    extends _$StreamStateCopyWithImpl<$Res>
    implements _$RecordDuringTimerCopyWith<$Res> {
  __$RecordDuringTimerCopyWithImpl(
      _RecordDuringTimer _value, $Res Function(_RecordDuringTimer) _then)
      : super(_value, (v) => _then(v as _RecordDuringTimer));

  @override
  _RecordDuringTimer get _value => super._value as _RecordDuringTimer;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_RecordDuringTimer(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
class _$_RecordDuringTimer
    with DiagnosticableTreeMixin
    implements _RecordDuringTimer {
  const _$_RecordDuringTimer({this.images = const <Image>[]});

  @JsonKey(defaultValue: const <Image>[])
  @override
  final List<Image> images;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreamState.recordDuringTimer(images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreamState.recordDuringTimer'))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecordDuringTimer &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$RecordDuringTimerCopyWith<_RecordDuringTimer> get copyWith =>
      __$RecordDuringTimerCopyWithImpl<_RecordDuringTimer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Image> images) initial,
    required TResult Function(List<Image> images) recordDuringTimer,
    required TResult Function(List<Image> images) recordAfterTimer,
    required TResult Function(List<Image> images) stop,
    required TResult Function(List<Image> images, String? message) error,
  }) {
    return recordDuringTimer(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Image> images)? initial,
    TResult Function(List<Image> images)? recordDuringTimer,
    TResult Function(List<Image> images)? recordAfterTimer,
    TResult Function(List<Image> images)? stop,
    TResult Function(List<Image> images, String? message)? error,
    required TResult orElse(),
  }) {
    if (recordDuringTimer != null) {
      return recordDuringTimer(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RecordDuringTimer value) recordDuringTimer,
    required TResult Function(_RecordAfterTimer value) recordAfterTimer,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return recordDuringTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RecordDuringTimer value)? recordDuringTimer,
    TResult Function(_RecordAfterTimer value)? recordAfterTimer,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (recordDuringTimer != null) {
      return recordDuringTimer(this);
    }
    return orElse();
  }
}

abstract class _RecordDuringTimer implements StreamState {
  const factory _RecordDuringTimer({List<Image> images}) = _$_RecordDuringTimer;

  @override
  List<Image> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecordDuringTimerCopyWith<_RecordDuringTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RecordAfterTimerCopyWith<$Res>
    implements $StreamStateCopyWith<$Res> {
  factory _$RecordAfterTimerCopyWith(
          _RecordAfterTimer value, $Res Function(_RecordAfterTimer) then) =
      __$RecordAfterTimerCopyWithImpl<$Res>;
  @override
  $Res call({List<Image> images});
}

/// @nodoc
class __$RecordAfterTimerCopyWithImpl<$Res>
    extends _$StreamStateCopyWithImpl<$Res>
    implements _$RecordAfterTimerCopyWith<$Res> {
  __$RecordAfterTimerCopyWithImpl(
      _RecordAfterTimer _value, $Res Function(_RecordAfterTimer) _then)
      : super(_value, (v) => _then(v as _RecordAfterTimer));

  @override
  _RecordAfterTimer get _value => super._value as _RecordAfterTimer;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_RecordAfterTimer(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
class _$_RecordAfterTimer
    with DiagnosticableTreeMixin
    implements _RecordAfterTimer {
  const _$_RecordAfterTimer({this.images = const <Image>[]});

  @JsonKey(defaultValue: const <Image>[])
  @override
  final List<Image> images;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreamState.recordAfterTimer(images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreamState.recordAfterTimer'))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecordAfterTimer &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$RecordAfterTimerCopyWith<_RecordAfterTimer> get copyWith =>
      __$RecordAfterTimerCopyWithImpl<_RecordAfterTimer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Image> images) initial,
    required TResult Function(List<Image> images) recordDuringTimer,
    required TResult Function(List<Image> images) recordAfterTimer,
    required TResult Function(List<Image> images) stop,
    required TResult Function(List<Image> images, String? message) error,
  }) {
    return recordAfterTimer(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Image> images)? initial,
    TResult Function(List<Image> images)? recordDuringTimer,
    TResult Function(List<Image> images)? recordAfterTimer,
    TResult Function(List<Image> images)? stop,
    TResult Function(List<Image> images, String? message)? error,
    required TResult orElse(),
  }) {
    if (recordAfterTimer != null) {
      return recordAfterTimer(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RecordDuringTimer value) recordDuringTimer,
    required TResult Function(_RecordAfterTimer value) recordAfterTimer,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return recordAfterTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RecordDuringTimer value)? recordDuringTimer,
    TResult Function(_RecordAfterTimer value)? recordAfterTimer,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (recordAfterTimer != null) {
      return recordAfterTimer(this);
    }
    return orElse();
  }
}

abstract class _RecordAfterTimer implements StreamState {
  const factory _RecordAfterTimer({List<Image> images}) = _$_RecordAfterTimer;

  @override
  List<Image> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RecordAfterTimerCopyWith<_RecordAfterTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StopCopyWith<$Res> implements $StreamStateCopyWith<$Res> {
  factory _$StopCopyWith(_Stop value, $Res Function(_Stop) then) =
      __$StopCopyWithImpl<$Res>;
  @override
  $Res call({List<Image> images});
}

/// @nodoc
class __$StopCopyWithImpl<$Res> extends _$StreamStateCopyWithImpl<$Res>
    implements _$StopCopyWith<$Res> {
  __$StopCopyWithImpl(_Stop _value, $Res Function(_Stop) _then)
      : super(_value, (v) => _then(v as _Stop));

  @override
  _Stop get _value => super._value as _Stop;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_Stop(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
class _$_Stop with DiagnosticableTreeMixin implements _Stop {
  const _$_Stop({this.images = const <Image>[]});

  @JsonKey(defaultValue: const <Image>[])
  @override
  final List<Image> images;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreamState.stop(images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreamState.stop'))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Stop &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$StopCopyWith<_Stop> get copyWith =>
      __$StopCopyWithImpl<_Stop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Image> images) initial,
    required TResult Function(List<Image> images) recordDuringTimer,
    required TResult Function(List<Image> images) recordAfterTimer,
    required TResult Function(List<Image> images) stop,
    required TResult Function(List<Image> images, String? message) error,
  }) {
    return stop(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Image> images)? initial,
    TResult Function(List<Image> images)? recordDuringTimer,
    TResult Function(List<Image> images)? recordAfterTimer,
    TResult Function(List<Image> images)? stop,
    TResult Function(List<Image> images, String? message)? error,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RecordDuringTimer value) recordDuringTimer,
    required TResult Function(_RecordAfterTimer value) recordAfterTimer,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RecordDuringTimer value)? recordDuringTimer,
    TResult Function(_RecordAfterTimer value)? recordAfterTimer,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements StreamState {
  const factory _Stop({List<Image> images}) = _$_Stop;

  @override
  List<Image> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StopCopyWith<_Stop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $StreamStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<Image> images, String? message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$StreamStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? images = freezed,
    Object? message = freezed,
  }) {
    return _then(_Error(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error({this.images = const <Image>[], this.message});

  @JsonKey(defaultValue: const <Image>[])
  @override
  final List<Image> images;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreamState.error(images: $images, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreamState.error'))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Image> images) initial,
    required TResult Function(List<Image> images) recordDuringTimer,
    required TResult Function(List<Image> images) recordAfterTimer,
    required TResult Function(List<Image> images) stop,
    required TResult Function(List<Image> images, String? message) error,
  }) {
    return error(images, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Image> images)? initial,
    TResult Function(List<Image> images)? recordDuringTimer,
    TResult Function(List<Image> images)? recordAfterTimer,
    TResult Function(List<Image> images)? stop,
    TResult Function(List<Image> images, String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(images, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RecordDuringTimer value) recordDuringTimer,
    required TResult Function(_RecordAfterTimer value) recordAfterTimer,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RecordDuringTimer value)? recordDuringTimer,
    TResult Function(_RecordAfterTimer value)? recordAfterTimer,
    TResult Function(_Stop value)? stop,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StreamState {
  const factory _Error({List<Image> images, String? message}) = _$_Error;

  @override
  List<Image> get images => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
