// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationPayload {
  String? get routeLocation;
  Map<String, dynamic>? get data;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationPayloadCopyWith<NotificationPayload> get copyWith =>
      _$NotificationPayloadCopyWithImpl<NotificationPayload>(
          this as NotificationPayload, _$identity);

  /// Serializes this NotificationPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationPayload &&
            (identical(other.routeLocation, routeLocation) ||
                other.routeLocation == routeLocation) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, routeLocation, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'NotificationPayload(routeLocation: $routeLocation, data: $data)';
  }
}

/// @nodoc
abstract mixin class $NotificationPayloadCopyWith<$Res> {
  factory $NotificationPayloadCopyWith(
          NotificationPayload value, $Res Function(NotificationPayload) _then) =
      _$NotificationPayloadCopyWithImpl;
  @useResult
  $Res call({String? routeLocation, Map<String, dynamic>? data});
}

/// @nodoc
class _$NotificationPayloadCopyWithImpl<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  _$NotificationPayloadCopyWithImpl(this._self, this._then);

  final NotificationPayload _self;
  final $Res Function(NotificationPayload) _then;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeLocation = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      routeLocation: freezed == routeLocation
          ? _self.routeLocation
          : routeLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NotificationPayload implements NotificationPayload {
  const _NotificationPayload(
      {required this.routeLocation, required final Map<String, dynamic>? data})
      : _data = data;
  factory _NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);

  @override
  final String? routeLocation;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationPayloadCopyWith<_NotificationPayload> get copyWith =>
      __$NotificationPayloadCopyWithImpl<_NotificationPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationPayload &&
            (identical(other.routeLocation, routeLocation) ||
                other.routeLocation == routeLocation) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, routeLocation, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'NotificationPayload(routeLocation: $routeLocation, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$NotificationPayloadCopyWith<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  factory _$NotificationPayloadCopyWith(_NotificationPayload value,
          $Res Function(_NotificationPayload) _then) =
      __$NotificationPayloadCopyWithImpl;
  @override
  @useResult
  $Res call({String? routeLocation, Map<String, dynamic>? data});
}

/// @nodoc
class __$NotificationPayloadCopyWithImpl<$Res>
    implements _$NotificationPayloadCopyWith<$Res> {
  __$NotificationPayloadCopyWithImpl(this._self, this._then);

  final _NotificationPayload _self;
  final $Res Function(_NotificationPayload) _then;

  /// Create a copy of NotificationPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routeLocation = freezed,
    Object? data = freezed,
  }) {
    return _then(_NotificationPayload(
      routeLocation: freezed == routeLocation
          ? _self.routeLocation
          : routeLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
