// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

  _TimerStateInitial initial({int seconds = 0}) {
    return _TimerStateInitial(
      seconds: seconds,
    );
  }

  _TimerStateStart start({int seconds = 0}) {
    return _TimerStateStart(
      seconds: seconds,
    );
  }

  _TimerStateStop stop({int seconds = 0}) {
    return _TimerStateStop(
      seconds: seconds,
    );
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  int get seconds => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seconds) initial,
    required TResult Function(int seconds) start,
    required TResult Function(int seconds) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seconds)? initial,
    TResult Function(int seconds)? start,
    TResult Function(int seconds)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerStateInitial value) initial,
    required TResult Function(_TimerStateStart value) start,
    required TResult Function(_TimerStateStop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerStateInitial value)? initial,
    TResult Function(_TimerStateStart value)? start,
    TResult Function(_TimerStateStop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call({int seconds});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? seconds = freezed,
  }) {
    return _then(_value.copyWith(
      seconds: seconds == freezed
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TimerStateInitialCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$TimerStateInitialCopyWith(
          _TimerStateInitial value, $Res Function(_TimerStateInitial) then) =
      __$TimerStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({int seconds});
}

/// @nodoc
class __$TimerStateInitialCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements _$TimerStateInitialCopyWith<$Res> {
  __$TimerStateInitialCopyWithImpl(
      _TimerStateInitial _value, $Res Function(_TimerStateInitial) _then)
      : super(_value, (v) => _then(v as _TimerStateInitial));

  @override
  _TimerStateInitial get _value => super._value as _TimerStateInitial;

  @override
  $Res call({
    Object? seconds = freezed,
  }) {
    return _then(_TimerStateInitial(
      seconds: seconds == freezed
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_TimerStateInitial
    with DiagnosticableTreeMixin
    implements _TimerStateInitial {
  const _$_TimerStateInitial({this.seconds = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int seconds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.initial(seconds: $seconds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.initial'))
      ..add(DiagnosticsProperty('seconds', seconds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerStateInitial &&
            (identical(other.seconds, seconds) ||
                const DeepCollectionEquality().equals(other.seconds, seconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seconds);

  @JsonKey(ignore: true)
  @override
  _$TimerStateInitialCopyWith<_TimerStateInitial> get copyWith =>
      __$TimerStateInitialCopyWithImpl<_TimerStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seconds) initial,
    required TResult Function(int seconds) start,
    required TResult Function(int seconds) stop,
  }) {
    return initial(seconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seconds)? initial,
    TResult Function(int seconds)? start,
    TResult Function(int seconds)? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(seconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerStateInitial value) initial,
    required TResult Function(_TimerStateStart value) start,
    required TResult Function(_TimerStateStop value) stop,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerStateInitial value)? initial,
    TResult Function(_TimerStateStart value)? start,
    TResult Function(_TimerStateStop value)? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TimerStateInitial implements TimerState {
  const factory _TimerStateInitial({int seconds}) = _$_TimerStateInitial;

  @override
  int get seconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimerStateInitialCopyWith<_TimerStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TimerStateStartCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$TimerStateStartCopyWith(
          _TimerStateStart value, $Res Function(_TimerStateStart) then) =
      __$TimerStateStartCopyWithImpl<$Res>;
  @override
  $Res call({int seconds});
}

/// @nodoc
class __$TimerStateStartCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res>
    implements _$TimerStateStartCopyWith<$Res> {
  __$TimerStateStartCopyWithImpl(
      _TimerStateStart _value, $Res Function(_TimerStateStart) _then)
      : super(_value, (v) => _then(v as _TimerStateStart));

  @override
  _TimerStateStart get _value => super._value as _TimerStateStart;

  @override
  $Res call({
    Object? seconds = freezed,
  }) {
    return _then(_TimerStateStart(
      seconds: seconds == freezed
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_TimerStateStart
    with DiagnosticableTreeMixin
    implements _TimerStateStart {
  const _$_TimerStateStart({this.seconds = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int seconds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.start(seconds: $seconds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.start'))
      ..add(DiagnosticsProperty('seconds', seconds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerStateStart &&
            (identical(other.seconds, seconds) ||
                const DeepCollectionEquality().equals(other.seconds, seconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seconds);

  @JsonKey(ignore: true)
  @override
  _$TimerStateStartCopyWith<_TimerStateStart> get copyWith =>
      __$TimerStateStartCopyWithImpl<_TimerStateStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seconds) initial,
    required TResult Function(int seconds) start,
    required TResult Function(int seconds) stop,
  }) {
    return start(seconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seconds)? initial,
    TResult Function(int seconds)? start,
    TResult Function(int seconds)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(seconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerStateInitial value) initial,
    required TResult Function(_TimerStateStart value) start,
    required TResult Function(_TimerStateStop value) stop,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerStateInitial value)? initial,
    TResult Function(_TimerStateStart value)? start,
    TResult Function(_TimerStateStop value)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _TimerStateStart implements TimerState {
  const factory _TimerStateStart({int seconds}) = _$_TimerStateStart;

  @override
  int get seconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimerStateStartCopyWith<_TimerStateStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TimerStateStopCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$TimerStateStopCopyWith(
          _TimerStateStop value, $Res Function(_TimerStateStop) then) =
      __$TimerStateStopCopyWithImpl<$Res>;
  @override
  $Res call({int seconds});
}

/// @nodoc
class __$TimerStateStopCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements _$TimerStateStopCopyWith<$Res> {
  __$TimerStateStopCopyWithImpl(
      _TimerStateStop _value, $Res Function(_TimerStateStop) _then)
      : super(_value, (v) => _then(v as _TimerStateStop));

  @override
  _TimerStateStop get _value => super._value as _TimerStateStop;

  @override
  $Res call({
    Object? seconds = freezed,
  }) {
    return _then(_TimerStateStop(
      seconds: seconds == freezed
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_TimerStateStop
    with DiagnosticableTreeMixin
    implements _TimerStateStop {
  const _$_TimerStateStop({this.seconds = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int seconds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.stop(seconds: $seconds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.stop'))
      ..add(DiagnosticsProperty('seconds', seconds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerStateStop &&
            (identical(other.seconds, seconds) ||
                const DeepCollectionEquality().equals(other.seconds, seconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seconds);

  @JsonKey(ignore: true)
  @override
  _$TimerStateStopCopyWith<_TimerStateStop> get copyWith =>
      __$TimerStateStopCopyWithImpl<_TimerStateStop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int seconds) initial,
    required TResult Function(int seconds) start,
    required TResult Function(int seconds) stop,
  }) {
    return stop(seconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int seconds)? initial,
    TResult Function(int seconds)? start,
    TResult Function(int seconds)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(seconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TimerStateInitial value) initial,
    required TResult Function(_TimerStateStart value) start,
    required TResult Function(_TimerStateStop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TimerStateInitial value)? initial,
    TResult Function(_TimerStateStart value)? start,
    TResult Function(_TimerStateStop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _TimerStateStop implements TimerState {
  const factory _TimerStateStop({int seconds}) = _$_TimerStateStop;

  @override
  int get seconds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimerStateStopCopyWith<_TimerStateStop> get copyWith =>
      throw _privateConstructorUsedError;
}
