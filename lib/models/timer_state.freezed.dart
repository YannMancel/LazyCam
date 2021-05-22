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

  _TimerStateInitial initial({Duration duration = Duration.zero}) {
    return _TimerStateInitial(
      duration: duration,
    );
  }

  _TimerStateStart start({Duration duration = Duration.zero}) {
    return _TimerStateStart(
      duration: duration,
    );
  }

  _TimerStateStop stop({Duration duration = Duration.zero}) {
    return _TimerStateStop(
      duration: duration,
    );
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  Duration get duration => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) initial,
    required TResult Function(Duration duration) start,
    required TResult Function(Duration duration) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? initial,
    TResult Function(Duration duration)? start,
    TResult Function(Duration duration)? stop,
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
  $Res call({Duration duration});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
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
  $Res call({Duration duration});
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
    Object? duration = freezed,
  }) {
    return _then(_TimerStateInitial(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
class _$_TimerStateInitial
    with DiagnosticableTreeMixin
    implements _TimerStateInitial {
  const _$_TimerStateInitial({this.duration = Duration.zero});

  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.initial(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.initial'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerStateInitial &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$TimerStateInitialCopyWith<_TimerStateInitial> get copyWith =>
      __$TimerStateInitialCopyWithImpl<_TimerStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) initial,
    required TResult Function(Duration duration) start,
    required TResult Function(Duration duration) stop,
  }) {
    return initial(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? initial,
    TResult Function(Duration duration)? start,
    TResult Function(Duration duration)? stop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(duration);
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
  const factory _TimerStateInitial({Duration duration}) = _$_TimerStateInitial;

  @override
  Duration get duration => throw _privateConstructorUsedError;
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
  $Res call({Duration duration});
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
    Object? duration = freezed,
  }) {
    return _then(_TimerStateStart(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
class _$_TimerStateStart
    with DiagnosticableTreeMixin
    implements _TimerStateStart {
  const _$_TimerStateStart({this.duration = Duration.zero});

  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.start(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.start'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerStateStart &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$TimerStateStartCopyWith<_TimerStateStart> get copyWith =>
      __$TimerStateStartCopyWithImpl<_TimerStateStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) initial,
    required TResult Function(Duration duration) start,
    required TResult Function(Duration duration) stop,
  }) {
    return start(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? initial,
    TResult Function(Duration duration)? start,
    TResult Function(Duration duration)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(duration);
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
  const factory _TimerStateStart({Duration duration}) = _$_TimerStateStart;

  @override
  Duration get duration => throw _privateConstructorUsedError;
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
  $Res call({Duration duration});
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
    Object? duration = freezed,
  }) {
    return _then(_TimerStateStop(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
class _$_TimerStateStop
    with DiagnosticableTreeMixin
    implements _TimerStateStop {
  const _$_TimerStateStop({this.duration = Duration.zero});

  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.stop(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.stop'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerStateStop &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$TimerStateStopCopyWith<_TimerStateStop> get copyWith =>
      __$TimerStateStopCopyWithImpl<_TimerStateStop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration duration) initial,
    required TResult Function(Duration duration) start,
    required TResult Function(Duration duration) stop,
  }) {
    return stop(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration duration)? initial,
    TResult Function(Duration duration)? start,
    TResult Function(Duration duration)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(duration);
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
  const factory _TimerStateStop({Duration duration}) = _$_TimerStateStop;

  @override
  Duration get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimerStateStopCopyWith<_TimerStateStop> get copyWith =>
      throw _privateConstructorUsedError;
}
