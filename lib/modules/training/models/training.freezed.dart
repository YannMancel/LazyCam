// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'training.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrainingTearOff {
  const _$TrainingTearOff();

  _Training call(
      {String name = 'Training', List<Cycle> cycles = const <Cycle>[Cycle()]}) {
    return _Training(
      name: name,
      cycles: cycles,
    );
  }
}

/// @nodoc
const $Training = _$TrainingTearOff();

/// @nodoc
mixin _$Training {
  String get name => throw _privateConstructorUsedError;
  List<Cycle> get cycles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingCopyWith<Training> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingCopyWith<$Res> {
  factory $TrainingCopyWith(Training value, $Res Function(Training) then) =
      _$TrainingCopyWithImpl<$Res>;
  $Res call({String name, List<Cycle> cycles});
}

/// @nodoc
class _$TrainingCopyWithImpl<$Res> implements $TrainingCopyWith<$Res> {
  _$TrainingCopyWithImpl(this._value, this._then);

  final Training _value;
  // ignore: unused_field
  final $Res Function(Training) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? cycles = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cycles: cycles == freezed
          ? _value.cycles
          : cycles // ignore: cast_nullable_to_non_nullable
              as List<Cycle>,
    ));
  }
}

/// @nodoc
abstract class _$TrainingCopyWith<$Res> implements $TrainingCopyWith<$Res> {
  factory _$TrainingCopyWith(_Training value, $Res Function(_Training) then) =
      __$TrainingCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<Cycle> cycles});
}

/// @nodoc
class __$TrainingCopyWithImpl<$Res> extends _$TrainingCopyWithImpl<$Res>
    implements _$TrainingCopyWith<$Res> {
  __$TrainingCopyWithImpl(_Training _value, $Res Function(_Training) _then)
      : super(_value, (v) => _then(v as _Training));

  @override
  _Training get _value => super._value as _Training;

  @override
  $Res call({
    Object? name = freezed,
    Object? cycles = freezed,
  }) {
    return _then(_Training(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cycles: cycles == freezed
          ? _value.cycles
          : cycles // ignore: cast_nullable_to_non_nullable
              as List<Cycle>,
    ));
  }
}

/// @nodoc

class _$_Training with DiagnosticableTreeMixin implements _Training {
  const _$_Training(
      {this.name = 'Training', this.cycles = const <Cycle>[Cycle()]});

  @JsonKey(defaultValue: 'Training')
  @override
  final String name;
  @JsonKey(defaultValue: const <Cycle>[Cycle()])
  @override
  final List<Cycle> cycles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Training(name: $name, cycles: $cycles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Training'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cycles', cycles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Training &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cycles, cycles) ||
                const DeepCollectionEquality().equals(other.cycles, cycles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cycles);

  @JsonKey(ignore: true)
  @override
  _$TrainingCopyWith<_Training> get copyWith =>
      __$TrainingCopyWithImpl<_Training>(this, _$identity);
}

abstract class _Training implements Training {
  const factory _Training({String name, List<Cycle> cycles}) = _$_Training;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<Cycle> get cycles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrainingCopyWith<_Training> get copyWith =>
      throw _privateConstructorUsedError;
}
