// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_delivery_geopoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDeliveryGeoPoint {
  String get orderId;
  GeoPoint get geoPoint;

  /// Create a copy of UpdateDeliveryGeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateDeliveryGeoPointCopyWith<UpdateDeliveryGeoPoint> get copyWith =>
      _$UpdateDeliveryGeoPointCopyWithImpl<UpdateDeliveryGeoPoint>(
          this as UpdateDeliveryGeoPoint, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateDeliveryGeoPoint &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, geoPoint);

  @override
  String toString() {
    return 'UpdateDeliveryGeoPoint(orderId: $orderId, geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class $UpdateDeliveryGeoPointCopyWith<$Res> {
  factory $UpdateDeliveryGeoPointCopyWith(UpdateDeliveryGeoPoint value,
          $Res Function(UpdateDeliveryGeoPoint) _then) =
      _$UpdateDeliveryGeoPointCopyWithImpl;
  @useResult
  $Res call({String orderId, GeoPoint geoPoint});
}

/// @nodoc
class _$UpdateDeliveryGeoPointCopyWithImpl<$Res>
    implements $UpdateDeliveryGeoPointCopyWith<$Res> {
  _$UpdateDeliveryGeoPointCopyWithImpl(this._self, this._then);

  final UpdateDeliveryGeoPoint _self;
  final $Res Function(UpdateDeliveryGeoPoint) _then;

  /// Create a copy of UpdateDeliveryGeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? geoPoint = null,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      geoPoint: null == geoPoint
          ? _self.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc

class _UpdateDeliveryGeoPoint implements UpdateDeliveryGeoPoint {
  const _UpdateDeliveryGeoPoint(
      {required this.orderId, required this.geoPoint});

  @override
  final String orderId;
  @override
  final GeoPoint geoPoint;

  /// Create a copy of UpdateDeliveryGeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateDeliveryGeoPointCopyWith<_UpdateDeliveryGeoPoint> get copyWith =>
      __$UpdateDeliveryGeoPointCopyWithImpl<_UpdateDeliveryGeoPoint>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateDeliveryGeoPoint &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, geoPoint);

  @override
  String toString() {
    return 'UpdateDeliveryGeoPoint(orderId: $orderId, geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class _$UpdateDeliveryGeoPointCopyWith<$Res>
    implements $UpdateDeliveryGeoPointCopyWith<$Res> {
  factory _$UpdateDeliveryGeoPointCopyWith(_UpdateDeliveryGeoPoint value,
          $Res Function(_UpdateDeliveryGeoPoint) _then) =
      __$UpdateDeliveryGeoPointCopyWithImpl;
  @override
  @useResult
  $Res call({String orderId, GeoPoint geoPoint});
}

/// @nodoc
class __$UpdateDeliveryGeoPointCopyWithImpl<$Res>
    implements _$UpdateDeliveryGeoPointCopyWith<$Res> {
  __$UpdateDeliveryGeoPointCopyWithImpl(this._self, this._then);

  final _UpdateDeliveryGeoPoint _self;
  final $Res Function(_UpdateDeliveryGeoPoint) _then;

  /// Create a copy of UpdateDeliveryGeoPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? geoPoint = null,
  }) {
    return _then(_UpdateDeliveryGeoPoint(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      geoPoint: null == geoPoint
          ? _self.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

// dart format on
