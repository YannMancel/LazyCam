// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuStateTearOff {
  const _$MenuStateTearOff();

  _Open open() {
    return const _Open();
  }

  _Close close() {
    return const _Close();
  }
}

/// @nodoc
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Open value) open,
    required TResult Function(_Close value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res> implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  final MenuState _value;
  // ignore: unused_field
  final $Res Function(MenuState) _then;
}

/// @nodoc
abstract class _$OpenCopyWith<$Res> {
  factory _$OpenCopyWith(_Open value, $Res Function(_Open) then) =
      __$OpenCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$OpenCopyWith<$Res> {
  __$OpenCopyWithImpl(_Open _value, $Res Function(_Open) _then)
      : super(_value, (v) => _then(v as _Open));

  @override
  _Open get _value => super._value as _Open;
}

/// @nodoc

class _$_Open with DiagnosticableTreeMixin implements _Open {
  const _$_Open();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuState.open()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MenuState.open'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Open);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) {
    return open();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
  }) {
    return open?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Open value) open,
    required TResult Function(_Close value) close,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class _Open implements MenuState {
  const factory _Open() = _$_Open;
}

/// @nodoc
abstract class _$CloseCopyWith<$Res> {
  factory _$CloseCopyWith(_Close value, $Res Function(_Close) then) =
      __$CloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$CloseCopyWith<$Res> {
  __$CloseCopyWithImpl(_Close _value, $Res Function(_Close) _then)
      : super(_value, (v) => _then(v as _Close));

  @override
  _Close get _value => super._value as _Close;
}

/// @nodoc

class _$_Close with DiagnosticableTreeMixin implements _Close {
  const _$_Close();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MenuState.close()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MenuState.close'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Close);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() open,
    required TResult Function() close,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? open,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Open value) open,
    required TResult Function(_Close value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Open value)? open,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _Close implements MenuState {
  const factory _Close() = _$_Close;
}
