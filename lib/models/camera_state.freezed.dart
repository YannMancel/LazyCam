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

  _CameraStateInitial initial({bool isFirstCamera = true}) {
    return _CameraStateInitial(
      isFirstCamera: isFirstCamera,
    );
  }

  _CameraStateSetup setup({bool isFirstCamera = true}) {
    return _CameraStateSetup(
      isFirstCamera: isFirstCamera,
    );
  }

  _CameraStateReadyPreview readyPreview({bool isFirstCamera = true}) {
    return _CameraStateReadyPreview(
      isFirstCamera: isFirstCamera,
    );
  }

  _CameraStateSwitchCamera switchCamera({bool isFirstCamera = true}) {
    return _CameraStateSwitchCamera(
      isFirstCamera: isFirstCamera,
    );
  }

  _CameraStateError error({bool isFirstCamera = true, String? message}) {
    return _CameraStateError(
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
    required TResult Function(_CameraStateInitial value) initial,
    required TResult Function(_CameraStateSetup value) setup,
    required TResult Function(_CameraStateReadyPreview value) readyPreview,
    required TResult Function(_CameraStateSwitchCamera value) switchCamera,
    required TResult Function(_CameraStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStateInitial value)? initial,
    TResult Function(_CameraStateSetup value)? setup,
    TResult Function(_CameraStateReadyPreview value)? readyPreview,
    TResult Function(_CameraStateSwitchCamera value)? switchCamera,
    TResult Function(_CameraStateError value)? error,
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
abstract class _$CameraStateInitialCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateInitialCopyWith(
          _CameraStateInitial value, $Res Function(_CameraStateInitial) then) =
      __$CameraStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera});
}

/// @nodoc
class __$CameraStateInitialCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res>
    implements _$CameraStateInitialCopyWith<$Res> {
  __$CameraStateInitialCopyWithImpl(
      _CameraStateInitial _value, $Res Function(_CameraStateInitial) _then)
      : super(_value, (v) => _then(v as _CameraStateInitial));

  @override
  _CameraStateInitial get _value => super._value as _CameraStateInitial;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_CameraStateInitial(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_CameraStateInitial
    with DiagnosticableTreeMixin
    implements _CameraStateInitial {
  const _$_CameraStateInitial({this.isFirstCamera = true});

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
        (other is _CameraStateInitial &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstCamera);

  @JsonKey(ignore: true)
  @override
  _$CameraStateInitialCopyWith<_CameraStateInitial> get copyWith =>
      __$CameraStateInitialCopyWithImpl<_CameraStateInitial>(this, _$identity);

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
    required TResult Function(_CameraStateInitial value) initial,
    required TResult Function(_CameraStateSetup value) setup,
    required TResult Function(_CameraStateReadyPreview value) readyPreview,
    required TResult Function(_CameraStateSwitchCamera value) switchCamera,
    required TResult Function(_CameraStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStateInitial value)? initial,
    TResult Function(_CameraStateSetup value)? setup,
    TResult Function(_CameraStateReadyPreview value)? readyPreview,
    TResult Function(_CameraStateSwitchCamera value)? switchCamera,
    TResult Function(_CameraStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CameraStateInitial implements CameraState {
  const factory _CameraStateInitial({bool isFirstCamera}) =
      _$_CameraStateInitial;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CameraStateInitialCopyWith<_CameraStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CameraStateSetupCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateSetupCopyWith(
          _CameraStateSetup value, $Res Function(_CameraStateSetup) then) =
      __$CameraStateSetupCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera});
}

/// @nodoc
class __$CameraStateSetupCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res>
    implements _$CameraStateSetupCopyWith<$Res> {
  __$CameraStateSetupCopyWithImpl(
      _CameraStateSetup _value, $Res Function(_CameraStateSetup) _then)
      : super(_value, (v) => _then(v as _CameraStateSetup));

  @override
  _CameraStateSetup get _value => super._value as _CameraStateSetup;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_CameraStateSetup(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_CameraStateSetup
    with DiagnosticableTreeMixin
    implements _CameraStateSetup {
  const _$_CameraStateSetup({this.isFirstCamera = true});

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
        (other is _CameraStateSetup &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstCamera);

  @JsonKey(ignore: true)
  @override
  _$CameraStateSetupCopyWith<_CameraStateSetup> get copyWith =>
      __$CameraStateSetupCopyWithImpl<_CameraStateSetup>(this, _$identity);

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
    required TResult Function(_CameraStateInitial value) initial,
    required TResult Function(_CameraStateSetup value) setup,
    required TResult Function(_CameraStateReadyPreview value) readyPreview,
    required TResult Function(_CameraStateSwitchCamera value) switchCamera,
    required TResult Function(_CameraStateError value) error,
  }) {
    return setup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStateInitial value)? initial,
    TResult Function(_CameraStateSetup value)? setup,
    TResult Function(_CameraStateReadyPreview value)? readyPreview,
    TResult Function(_CameraStateSwitchCamera value)? switchCamera,
    TResult Function(_CameraStateError value)? error,
    required TResult orElse(),
  }) {
    if (setup != null) {
      return setup(this);
    }
    return orElse();
  }
}

abstract class _CameraStateSetup implements CameraState {
  const factory _CameraStateSetup({bool isFirstCamera}) = _$_CameraStateSetup;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CameraStateSetupCopyWith<_CameraStateSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CameraStateReadyPreviewCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateReadyPreviewCopyWith(_CameraStateReadyPreview value,
          $Res Function(_CameraStateReadyPreview) then) =
      __$CameraStateReadyPreviewCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera});
}

/// @nodoc
class __$CameraStateReadyPreviewCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res>
    implements _$CameraStateReadyPreviewCopyWith<$Res> {
  __$CameraStateReadyPreviewCopyWithImpl(_CameraStateReadyPreview _value,
      $Res Function(_CameraStateReadyPreview) _then)
      : super(_value, (v) => _then(v as _CameraStateReadyPreview));

  @override
  _CameraStateReadyPreview get _value =>
      super._value as _CameraStateReadyPreview;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_CameraStateReadyPreview(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_CameraStateReadyPreview
    with DiagnosticableTreeMixin
    implements _CameraStateReadyPreview {
  const _$_CameraStateReadyPreview({this.isFirstCamera = true});

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
        (other is _CameraStateReadyPreview &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstCamera);

  @JsonKey(ignore: true)
  @override
  _$CameraStateReadyPreviewCopyWith<_CameraStateReadyPreview> get copyWith =>
      __$CameraStateReadyPreviewCopyWithImpl<_CameraStateReadyPreview>(
          this, _$identity);

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
    required TResult Function(_CameraStateInitial value) initial,
    required TResult Function(_CameraStateSetup value) setup,
    required TResult Function(_CameraStateReadyPreview value) readyPreview,
    required TResult Function(_CameraStateSwitchCamera value) switchCamera,
    required TResult Function(_CameraStateError value) error,
  }) {
    return readyPreview(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStateInitial value)? initial,
    TResult Function(_CameraStateSetup value)? setup,
    TResult Function(_CameraStateReadyPreview value)? readyPreview,
    TResult Function(_CameraStateSwitchCamera value)? switchCamera,
    TResult Function(_CameraStateError value)? error,
    required TResult orElse(),
  }) {
    if (readyPreview != null) {
      return readyPreview(this);
    }
    return orElse();
  }
}

abstract class _CameraStateReadyPreview implements CameraState {
  const factory _CameraStateReadyPreview({bool isFirstCamera}) =
      _$_CameraStateReadyPreview;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CameraStateReadyPreviewCopyWith<_CameraStateReadyPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CameraStateSwitchCameraCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateSwitchCameraCopyWith(_CameraStateSwitchCamera value,
          $Res Function(_CameraStateSwitchCamera) then) =
      __$CameraStateSwitchCameraCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera});
}

/// @nodoc
class __$CameraStateSwitchCameraCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res>
    implements _$CameraStateSwitchCameraCopyWith<$Res> {
  __$CameraStateSwitchCameraCopyWithImpl(_CameraStateSwitchCamera _value,
      $Res Function(_CameraStateSwitchCamera) _then)
      : super(_value, (v) => _then(v as _CameraStateSwitchCamera));

  @override
  _CameraStateSwitchCamera get _value =>
      super._value as _CameraStateSwitchCamera;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
  }) {
    return _then(_CameraStateSwitchCamera(
      isFirstCamera: isFirstCamera == freezed
          ? _value.isFirstCamera
          : isFirstCamera // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_CameraStateSwitchCamera
    with DiagnosticableTreeMixin
    implements _CameraStateSwitchCamera {
  const _$_CameraStateSwitchCamera({this.isFirstCamera = true});

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
        (other is _CameraStateSwitchCamera &&
            (identical(other.isFirstCamera, isFirstCamera) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstCamera, isFirstCamera)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isFirstCamera);

  @JsonKey(ignore: true)
  @override
  _$CameraStateSwitchCameraCopyWith<_CameraStateSwitchCamera> get copyWith =>
      __$CameraStateSwitchCameraCopyWithImpl<_CameraStateSwitchCamera>(
          this, _$identity);

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
    required TResult Function(_CameraStateInitial value) initial,
    required TResult Function(_CameraStateSetup value) setup,
    required TResult Function(_CameraStateReadyPreview value) readyPreview,
    required TResult Function(_CameraStateSwitchCamera value) switchCamera,
    required TResult Function(_CameraStateError value) error,
  }) {
    return switchCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStateInitial value)? initial,
    TResult Function(_CameraStateSetup value)? setup,
    TResult Function(_CameraStateReadyPreview value)? readyPreview,
    TResult Function(_CameraStateSwitchCamera value)? switchCamera,
    TResult Function(_CameraStateError value)? error,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(this);
    }
    return orElse();
  }
}

abstract class _CameraStateSwitchCamera implements CameraState {
  const factory _CameraStateSwitchCamera({bool isFirstCamera}) =
      _$_CameraStateSwitchCamera;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CameraStateSwitchCameraCopyWith<_CameraStateSwitchCamera> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CameraStateErrorCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateErrorCopyWith(
          _CameraStateError value, $Res Function(_CameraStateError) then) =
      __$CameraStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({bool isFirstCamera, String? message});
}

/// @nodoc
class __$CameraStateErrorCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res>
    implements _$CameraStateErrorCopyWith<$Res> {
  __$CameraStateErrorCopyWithImpl(
      _CameraStateError _value, $Res Function(_CameraStateError) _then)
      : super(_value, (v) => _then(v as _CameraStateError));

  @override
  _CameraStateError get _value => super._value as _CameraStateError;

  @override
  $Res call({
    Object? isFirstCamera = freezed,
    Object? message = freezed,
  }) {
    return _then(_CameraStateError(
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
class _$_CameraStateError
    with DiagnosticableTreeMixin
    implements _CameraStateError {
  const _$_CameraStateError({this.isFirstCamera = true, this.message});

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
        (other is _CameraStateError &&
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
  _$CameraStateErrorCopyWith<_CameraStateError> get copyWith =>
      __$CameraStateErrorCopyWithImpl<_CameraStateError>(this, _$identity);

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
    required TResult Function(_CameraStateInitial value) initial,
    required TResult Function(_CameraStateSetup value) setup,
    required TResult Function(_CameraStateReadyPreview value) readyPreview,
    required TResult Function(_CameraStateSwitchCamera value) switchCamera,
    required TResult Function(_CameraStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CameraStateInitial value)? initial,
    TResult Function(_CameraStateSetup value)? setup,
    TResult Function(_CameraStateReadyPreview value)? readyPreview,
    TResult Function(_CameraStateSwitchCamera value)? switchCamera,
    TResult Function(_CameraStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CameraStateError implements CameraState {
  const factory _CameraStateError({bool isFirstCamera, String? message}) =
      _$_CameraStateError;

  @override
  bool get isFirstCamera => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CameraStateErrorCopyWith<_CameraStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
