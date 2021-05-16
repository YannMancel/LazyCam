// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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
      int timeInSecond = 90,
      int tempo = 0,
      int pauseInSecond = 0}) {
    return _Cycle(
      id: id,
      timeInSecond: timeInSecond,
      tempo: tempo,
      pauseInSecond: pauseInSecond,
    );
  }
}

/// @nodoc
const $Cycle = _$CycleTearOff();

/// @nodoc
mixin _$Cycle {
  int get id => throw _privateConstructorUsedError;
  int get timeInSecond => throw _privateConstructorUsedError;
  int get tempo => throw _privateConstructorUsedError;
  int get pauseInSecond => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CycleCopyWith<Cycle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CycleCopyWith<$Res> {
  factory $CycleCopyWith(Cycle value, $Res Function(Cycle) then) =
      _$CycleCopyWithImpl<$Res>;
  $Res call({int id, int timeInSecond, int tempo, int pauseInSecond});
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
    Object? timeInSecond = freezed,
    Object? tempo = freezed,
    Object? pauseInSecond = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeInSecond: timeInSecond == freezed
          ? _value.timeInSecond
          : timeInSecond // ignore: cast_nullable_to_non_nullable
              as int,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
      pauseInSecond: pauseInSecond == freezed
          ? _value.pauseInSecond
          : pauseInSecond // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CycleCopyWith<$Res> implements $CycleCopyWith<$Res> {
  factory _$CycleCopyWith(_Cycle value, $Res Function(_Cycle) then) =
      __$CycleCopyWithImpl<$Res>;
  @override
  $Res call({int id, int timeInSecond, int tempo, int pauseInSecond});
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
    Object? timeInSecond = freezed,
    Object? tempo = freezed,
    Object? pauseInSecond = freezed,
  }) {
    return _then(_Cycle(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeInSecond: timeInSecond == freezed
          ? _value.timeInSecond
          : timeInSecond // ignore: cast_nullable_to_non_nullable
              as int,
      tempo: tempo == freezed
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as int,
      pauseInSecond: pauseInSecond == freezed
          ? _value.pauseInSecond
          : pauseInSecond // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_Cycle with DiagnosticableTreeMixin implements _Cycle {
  const _$_Cycle(
      {this.id = 0,
      this.timeInSecond = 90,
      this.tempo = 0,
      this.pauseInSecond = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: 90)
  @override
  final int timeInSecond;
  @JsonKey(defaultValue: 0)
  @override
  final int tempo;
  @JsonKey(defaultValue: 0)
  @override
  final int pauseInSecond;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cycle(id: $id, timeInSecond: $timeInSecond, tempo: $tempo, pauseInSecond: $pauseInSecond)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cycle'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('timeInSecond', timeInSecond))
      ..add(DiagnosticsProperty('tempo', tempo))
      ..add(DiagnosticsProperty('pauseInSecond', pauseInSecond));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cycle &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timeInSecond, timeInSecond) ||
                const DeepCollectionEquality()
                    .equals(other.timeInSecond, timeInSecond)) &&
            (identical(other.tempo, tempo) ||
                const DeepCollectionEquality().equals(other.tempo, tempo)) &&
            (identical(other.pauseInSecond, pauseInSecond) ||
                const DeepCollectionEquality()
                    .equals(other.pauseInSecond, pauseInSecond)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timeInSecond) ^
      const DeepCollectionEquality().hash(tempo) ^
      const DeepCollectionEquality().hash(pauseInSecond);

  @JsonKey(ignore: true)
  @override
  _$CycleCopyWith<_Cycle> get copyWith =>
      __$CycleCopyWithImpl<_Cycle>(this, _$identity);
}

abstract class _Cycle implements Cycle {
  const factory _Cycle(
      {int id, int timeInSecond, int tempo, int pauseInSecond}) = _$_Cycle;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get timeInSecond => throw _privateConstructorUsedError;
  @override
  int get tempo => throw _privateConstructorUsedError;
  @override
  int get pauseInSecond => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CycleCopyWith<_Cycle> get copyWith => throw _privateConstructorUsedError;
}
