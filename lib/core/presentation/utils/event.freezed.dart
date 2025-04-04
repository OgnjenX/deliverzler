// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Event<T> implements DiagnosticableTreeMixin {
  T get arg;
  Key? get key;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EventCopyWith<T, Event<T>> get copyWith =>
      _$EventCopyWithImpl<T, Event<T>>(this as Event<T>, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Event<$T>'))
      ..add(DiagnosticsProperty('arg', arg))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Event<T> &&
            const DeepCollectionEquality().equals(other.arg, arg) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg), key);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Event<$T>(arg: $arg, key: $key)';
  }
}

/// @nodoc
abstract mixin class $EventCopyWith<T, $Res> {
  factory $EventCopyWith(Event<T> value, $Res Function(Event<T>) _then) =
      _$EventCopyWithImpl;
  @useResult
  $Res call({T arg, Key? key});
}

/// @nodoc
class _$EventCopyWithImpl<T, $Res> implements $EventCopyWith<T, $Res> {
  _$EventCopyWithImpl(this._self, this._then);

  final Event<T> _self;
  final $Res Function(Event<T>) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arg = freezed,
    Object? key = freezed,
  }) {
    return _then(_self.copyWith(
      arg: freezed == arg
          ? _self.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as T,
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc

class _Event<T> with DiagnosticableTreeMixin implements Event<T> {
  const _Event({required this.arg, this.key});

  @override
  final T arg;
  @override
  final Key? key;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EventCopyWith<T, _Event<T>> get copyWith =>
      __$EventCopyWithImpl<T, _Event<T>>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Event<$T>'))
      ..add(DiagnosticsProperty('arg', arg))
      ..add(DiagnosticsProperty('key', key));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Event<T> &&
            const DeepCollectionEquality().equals(other.arg, arg) &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg), key);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Event<$T>(arg: $arg, key: $key)';
  }
}

/// @nodoc
abstract mixin class _$EventCopyWith<T, $Res>
    implements $EventCopyWith<T, $Res> {
  factory _$EventCopyWith(_Event<T> value, $Res Function(_Event<T>) _then) =
      __$EventCopyWithImpl;
  @override
  @useResult
  $Res call({T arg, Key? key});
}

/// @nodoc
class __$EventCopyWithImpl<T, $Res> implements _$EventCopyWith<T, $Res> {
  __$EventCopyWithImpl(this._self, this._then);

  final _Event<T> _self;
  final $Res Function(_Event<T>) _then;

  /// Create a copy of Event
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? arg = freezed,
    Object? key = freezed,
  }) {
    return _then(_Event<T>(
      arg: freezed == arg
          ? _self.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as T,
      key: freezed == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

// dart format on
