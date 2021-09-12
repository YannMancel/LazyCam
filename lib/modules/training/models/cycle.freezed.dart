// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cycle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CycleTearOff {
  const _$CycleTearOff();

  _Cycle call(
      {int id = 0,
      Duration time = const Duration(minutes: 1, seconds: 30),
      int tempo = 0,
      Duration pause = Duration.zero,
      int repeat = 1}) {
    return _Cycle(
      id: id,
      time: time,
      tempo: tempo,
      pause: pause,
      repeat: repeat,
    );
  }
}

/// @nodoc
const $Cycle = _$CycleTearOff();

/// @nodoc
mixin _$Cycle {
  int get id => throw _privateConstructorUsedError;
  Duration get time => throw _privateConstructorUsedError;
  int get tempo => throw _privateConstructorUsedError;
  Duration get pause => throw _privateConstructorUsedError;
  int get repeat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CycleCopyWith<Cycle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CycleCopyWith<$Res> {
  factory $CycleCopyWith(Cycle value, $Res Function(Cycle) then) =
      _$CycleCopyWithImpl<$Res>;
  $Res call({int id, Duration time, int tempo, Duration pause, int repeat});
}

/// @nodoc
class _$CycleCopyWithImpl<$Res> implements $CycleCopyWith<$Res> {
  _$CycleCopyWithImpl(this._value, this._then);

  final Cycle _value;
  // ignore: unused_field
  final $Res Function(Cycle) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? time = freezed,
    Object? tempo = freezed,
    Object? pause = freezed,
    Object? repeat = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
      pause: pause == freezed
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as Duration,
      repeat: repeat == freezed
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CycleCopyWith<$Res> implements $CycleCopyWith<$Res> {
  factory _$CycleCopyWith(_Cycle value, $Res Function(_Cycle) then) =
      __$CycleCopyWithImpl<$Res>;
  @override
  $Res call({int id, Duration time, int tempo, Duration pause, int repeat});
}

/// @nodoc
class __$CycleCopyWithImpl<$Res> extends _$CycleCopyWithImpl<$Res>
    implements _$CycleCopyWith<$Res> {
  __$CycleCopyWithImpl(_Cycle _value, $Res Function(_Cycle) _then)
      : super(_value, (v) => _then(v as _Cycle));

  @override
  _Cycle get _value => super._value as _Cycle;

  @override
  $Res call({
    Object? id = freezed,
    Object? time = freezed,
    Object? tempo = freezed,
    Object? pause = freezed,
    Object? repeat = freezed,
  }) {
    return _then(_Cycle(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
      pause: pause == freezed
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as Duration,
      repeat: repeat == freezed
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Cycle with DiagnosticableTreeMixin implements _Cycle {
  const _$_Cycle(
      {this.id = 0,
      this.time = const Duration(minutes: 1, seconds: 30),
      this.tempo = 0,
      this.pause = Duration.zero,
      this.repeat = 1});

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: const Duration(minutes: 1, seconds: 30))
  @override
  final Duration time;
  @JsonKey(defaultValue: 0)
  @override
  final int tempo;
  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration pause;
  @JsonKey(defaultValue: 1)
  @override
  final int repeat;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cycle(id: $id, time: $time, tempo: $tempo, pause: $pause, repeat: $repeat)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cycle'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('tempo', tempo))
      ..add(DiagnosticsProperty('pause', pause))
      ..add(DiagnosticsProperty('repeat', repeat));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cycle &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.tempo, tempo) ||
                const DeepCollectionEquality().equals(other.tempo, tempo)) &&
            (identical(other.pause, pause) ||
                const DeepCollectionEquality().equals(other.pause, pause)) &&
            (identical(other.repeat, repeat) ||
                const DeepCollectionEquality().equals(other.repeat, repeat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(tempo) ^
      const DeepCollectionEquality().hash(pause) ^
      const DeepCollectionEquality().hash(repeat);

  @JsonKey(ignore: true)
  @override
  _$CycleCopyWith<_Cycle> get copyWith =>
      __$CycleCopyWithImpl<_Cycle>(this, _$identity);
}

abstract class _Cycle implements Cycle {
  const factory _Cycle(
      {int id,
      Duration time,
      int tempo,
      Duration pause,
      int repeat}) = _$_Cycle;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Duration get time => throw _privateConstructorUsedError;
  @override
  int get tempo => throw _privateConstructorUsedError;
  @override
  Duration get pause => throw _privateConstructorUsedError;
  @override
  int get repeat => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CycleCopyWith<_Cycle> get copyWith => throw _privateConstructorUsedError;
}
