// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'camera_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CameraStateTearOff {
  const _$CameraStateTearOff();

  _Initial initial({bool isFirstCamera = true}) {
    return _Initial(
      isFirstCamera: isFirstCamera,
    );
  }

  _Setup setup({bool isFirstCamera = true}) {
    return _Setup(
      isFirstCamera: isFirstCamera,
    );
  }

  _ReadyPreview readyPreview({bool isFirstCamera = true}) {
    return _ReadyPreview(
      isFirstCamera: isFirstCamera,
    );
  }

  _SwitchCamera switchCamera({bool isFirstCamera = true}) {
    return _SwitchCamera(
      isFirstCamera: isFirstCamera,
    );
  }

  _Error error({bool isFirstCamera = true, String? message}) {
    return _Error(
      isFirstCamera: isFirstCamera,
      message: message,
    );
  }
}

/// @nodoc
const $CameraState = _$CameraStateTearOff();

/// @nodoc
mixin _$CameraState {
  bool get isFirstCamera => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstCamera) initial,
    required TResult Function(bool isFirstCamera) setup,
    required TResult Function(bool isFirstCamera) readyPreview,
    required TResult Function(bool isFirstCamera) switchCamera,
    required TResult Function(bool isFirstCamera, String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstCamera)? initial,
    TResult Function(bool isFirstCamera)? setup,
    TResult Function(bool isFirstCamera)? readyPreview,
    TResult Function(bool isFirstCamera)? switchCamera,
    TResult Function(bool isFirstCamera, String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setup value) setup,
    required TResult Function(_ReadyPreview value) readyPreview,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setup value)? setup,
    TResult Function(_ReadyPreview value)? readyPreview,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res>;
  $Res call({bool isFirstCamera});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res> implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  final CameraState _value;
  // ignore: unused_field
  final $Res Function(CameraState) _then;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_value.copyWith(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_Initial(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({this.isFirstCamera = true});

  @JsonKey(defaultValue: true)
  @override
  final bool isFirstCamera;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState.initial(isFirstCamera: $isFirstCamera)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState.initial'))
      ..add(DiagnosticsProperty('isFirstCamera', isFirstCamera));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstCamera);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstCamera) initial,
    required TResult Function(bool isFirstCamera) setup,
    required TResult Function(bool isFirstCamera) readyPreview,
    required TResult Function(bool isFirstCamera) switchCamera,
    required TResult Function(bool isFirstCamera, String? message) error,
  }) {
    return initial(isFirstCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstCamera)? initial,
    TResult Function(bool isFirstCamera)? setup,
    TResult Function(bool isFirstCamera)? readyPreview,
    TResult Function(bool isFirstCamera)? switchCamera,
    TResult Function(bool isFirstCamera, String? message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isFirstCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setup value) setup,
    required TResult Function(_ReadyPreview value) readyPreview,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setup value)? setup,
    TResult Function(_ReadyPreview value)? readyPreview,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CameraState {
  const factory _Initial({bool isFirstCamera}) = _$_Initial;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetupCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory _$SetupCopyWith(_Setup value, $Res Function(_Setup) then) =
      __$SetupCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera});
}

/// @nodoc
class __$SetupCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$SetupCopyWith<$Res> {
  __$SetupCopyWithImpl(_Setup _value, $Res Function(_Setup) _then)
      : super(_value, (v) => _then(v as _Setup));

  @override
  _Setup get _value => super._value as _Setup;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_Setup(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Setup with DiagnosticableTreeMixin implements _Setup {
  const _$_Setup({this.isFirstCamera = true});

  @JsonKey(defaultValue: true)
  @override
  final bool isFirstCamera;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState.setup(isFirstCamera: $isFirstCamera)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState.setup'))
      ..add(DiagnosticsProperty('isFirstCamera', isFirstCamera));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Setup &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstCamera);

  @JsonKey(ignore: true)
  @override
  _$SetupCopyWith<_Setup> get copyWith =>
      __$SetupCopyWithImpl<_Setup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstCamera) initial,
    required TResult Function(bool isFirstCamera) setup,
    required TResult Function(bool isFirstCamera) readyPreview,
    required TResult Function(bool isFirstCamera) switchCamera,
    required TResult Function(bool isFirstCamera, String? message) error,
  }) {
    return setup(isFirstCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstCamera)? initial,
    TResult Function(bool isFirstCamera)? setup,
    TResult Function(bool isFirstCamera)? readyPreview,
    TResult Function(bool isFirstCamera)? switchCamera,
    TResult Function(bool isFirstCamera, String? message)? error,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(isFirstCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setup value) setup,
    required TResult Function(_ReadyPreview value) readyPreview,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_Error value) error,
  }) {
    return setup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setup value)? setup,
    TResult Function(_ReadyPreview value)? readyPreview,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class _Setup implements CameraState {
  const factory _Setup({bool isFirstCamera}) = _$_Setup;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SetupCopyWith<_Setup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReadyPreviewCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$ReadyPreviewCopyWith(
          _ReadyPreview value, $Res Function(_ReadyPreview) then) =
      __$ReadyPreviewCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera});
}

/// @nodoc
class __$ReadyPreviewCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$ReadyPreviewCopyWith<$Res> {
  __$ReadyPreviewCopyWithImpl(
      _ReadyPreview _value, $Res Function(_ReadyPreview) _then)
      : super(_value, (v) => _then(v as _ReadyPreview));

  @override
  _ReadyPreview get _value => super._value as _ReadyPreview;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_ReadyPreview(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_ReadyPreview with DiagnosticableTreeMixin implements _ReadyPreview {
  const _$_ReadyPreview({this.isFirstCamera = true});

  @JsonKey(defaultValue: true)
  @override
  final bool isFirstCamera;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState.readyPreview(isFirstCamera: $isFirstCamera)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState.readyPreview'))
      ..add(DiagnosticsProperty('isFirstCamera', isFirstCamera));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadyPreview &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstCamera);

  @JsonKey(ignore: true)
  @override
  _$ReadyPreviewCopyWith<_ReadyPreview> get copyWith =>
      __$ReadyPreviewCopyWithImpl<_ReadyPreview>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstCamera) initial,
    required TResult Function(bool isFirstCamera) setup,
    required TResult Function(bool isFirstCamera) readyPreview,
    required TResult Function(bool isFirstCamera) switchCamera,
    required TResult Function(bool isFirstCamera, String? message) error,
  }) {
    return readyPreview(isFirstCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstCamera)? initial,
    TResult Function(bool isFirstCamera)? setup,
    TResult Function(bool isFirstCamera)? readyPreview,
    TResult Function(bool isFirstCamera)? switchCamera,
    TResult Function(bool isFirstCamera, String? message)? error,
    required TResult orElse(),
  }) {
    if (readyPreview != null) {
      return readyPreview(isFirstCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setup value) setup,
    required TResult Function(_ReadyPreview value) readyPreview,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_Error value) error,
  }) {
    return readyPreview(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setup value)? setup,
    TResult Function(_ReadyPreview value)? readyPreview,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (readyPreview != null) {
      return readyPreview(this);
    }
    return orElse();
  }
}

abstract class _ReadyPreview implements CameraState {
  const factory _ReadyPreview({bool isFirstCamera}) = _$_ReadyPreview;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReadyPreviewCopyWith<_ReadyPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwitchCameraCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$SwitchCameraCopyWith(
          _SwitchCamera value, $Res Function(_SwitchCamera) then) =
      __$SwitchCameraCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera});
}

/// @nodoc
class __$SwitchCameraCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$SwitchCameraCopyWith<$Res> {
  __$SwitchCameraCopyWithImpl(
      _SwitchCamera _value, $Res Function(_SwitchCamera) _then)
      : super(_value, (v) => _then(v as _SwitchCamera));

  @override
  _SwitchCamera get _value => super._value as _SwitchCamera;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_SwitchCamera(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_SwitchCamera with DiagnosticableTreeMixin implements _SwitchCamera {
  const _$_SwitchCamera({this.isFirstCamera = true});

  @JsonKey(defaultValue: true)
  @override
  final bool isFirstCamera;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState.switchCamera(isFirstCamera: $isFirstCamera)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState.switchCamera'))
      ..add(DiagnosticsProperty('isFirstCamera', isFirstCamera));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwitchCamera &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstCamera);

  @JsonKey(ignore: true)
  @override
  _$SwitchCameraCopyWith<_SwitchCamera> get copyWith =>
      __$SwitchCameraCopyWithImpl<_SwitchCamera>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstCamera) initial,
    required TResult Function(bool isFirstCamera) setup,
    required TResult Function(bool isFirstCamera) readyPreview,
    required TResult Function(bool isFirstCamera) switchCamera,
    required TResult Function(bool isFirstCamera, String? message) error,
  }) {
    return switchCamera(isFirstCamera);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstCamera)? initial,
    TResult Function(bool isFirstCamera)? setup,
    TResult Function(bool isFirstCamera)? readyPreview,
    TResult Function(bool isFirstCamera)? switchCamera,
    TResult Function(bool isFirstCamera, String? message)? error,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(isFirstCamera);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setup value) setup,
    required TResult Function(_ReadyPreview value) readyPreview,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_Error value) error,
  }) {
    return switchCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setup value)? setup,
    TResult Function(_ReadyPreview value)? readyPreview,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(this);
    }
    return orElse();
  }
}

abstract class _SwitchCamera implements CameraState {
  const factory _SwitchCamera({bool isFirstCamera}) = _$_SwitchCamera;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwitchCameraCopyWith<_SwitchCamera> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera, String? message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CameraStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
    Object? message = freezed,
  }) {
    return _then(_Error(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_Error with DiagnosticableTreeMixin implements _Error {
  const _$_Error({this.isFirstCamera = true, this.message});

  @JsonKey(defaultValue: true)
  @override
  final bool isFirstCamera;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState.error(isFirstCamera: $isFirstCamera, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState.error'))
      ..add(DiagnosticsProperty('isFirstCamera', isFirstCamera))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFirstCamera) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstCamera) initial,
    required TResult Function(bool isFirstCamera) setup,
    required TResult Function(bool isFirstCamera) readyPreview,
    required TResult Function(bool isFirstCamera) switchCamera,
    required TResult Function(bool isFirstCamera, String? message) error,
  }) {
    return error(isFirstCamera, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstCamera)? initial,
    TResult Function(bool isFirstCamera)? setup,
    TResult Function(bool isFirstCamera)? readyPreview,
    TResult Function(bool isFirstCamera)? switchCamera,
    TResult Function(bool isFirstCamera, String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(isFirstCamera, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Setup value) setup,
    required TResult Function(_ReadyPreview value) readyPreview,
    required TResult Function(_SwitchCamera value) switchCamera,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Setup value)? setup,
    TResult Function(_ReadyPreview value)? readyPreview,
    TResult Function(_SwitchCamera value)? switchCamera,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CameraState {
  const factory _Error({bool isFirstCamera, String? message}) = _$_Error;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
