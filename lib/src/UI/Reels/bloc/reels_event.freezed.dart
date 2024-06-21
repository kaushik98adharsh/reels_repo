// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reels_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadReels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadReels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadReels,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReels value) loadReels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReels value)? loadReels,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReels value)? loadReels,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelsEventCopyWith<$Res> {
  factory $ReelsEventCopyWith(
          ReelsEvent value, $Res Function(ReelsEvent) then) =
      _$ReelsEventCopyWithImpl<$Res, ReelsEvent>;
}

/// @nodoc
class _$ReelsEventCopyWithImpl<$Res, $Val extends ReelsEvent>
    implements $ReelsEventCopyWith<$Res> {
  _$ReelsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadReelsImplCopyWith<$Res> {
  factory _$$LoadReelsImplCopyWith(
          _$LoadReelsImpl value, $Res Function(_$LoadReelsImpl) then) =
      __$$LoadReelsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadReelsImplCopyWithImpl<$Res>
    extends _$ReelsEventCopyWithImpl<$Res, _$LoadReelsImpl>
    implements _$$LoadReelsImplCopyWith<$Res> {
  __$$LoadReelsImplCopyWithImpl(
      _$LoadReelsImpl _value, $Res Function(_$LoadReelsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadReelsImpl implements LoadReels {
  const _$LoadReelsImpl();

  @override
  String toString() {
    return 'ReelsEvent.loadReels()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadReelsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadReels,
  }) {
    return loadReels();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadReels,
  }) {
    return loadReels?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadReels,
    required TResult orElse(),
  }) {
    if (loadReels != null) {
      return loadReels();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReels value) loadReels,
  }) {
    return loadReels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReels value)? loadReels,
  }) {
    return loadReels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReels value)? loadReels,
    required TResult orElse(),
  }) {
    if (loadReels != null) {
      return loadReels(this);
    }
    return orElse();
  }
}

abstract class LoadReels implements ReelsEvent {
  const factory LoadReels() = _$LoadReelsImpl;
}
