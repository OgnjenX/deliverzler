// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_delivery_geo_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDeliveryGeoPointDto {
  String get orderId;
  @GeoPointConverter()
  GeoPoint get geoPoint;

  /// Create a copy of UpdateDeliveryGeoPointDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateDeliveryGeoPointDtoCopyWith<UpdateDeliveryGeoPointDto> get copyWith =>
      _$UpdateDeliveryGeoPointDtoCopyWithImpl<UpdateDeliveryGeoPointDto>(
          this as UpdateDeliveryGeoPointDto, _$identity);

  /// Serializes this UpdateDeliveryGeoPointDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateDeliveryGeoPointDto &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, geoPoint);

  @override
  String toString() {
    return 'UpdateDeliveryGeoPointDto(orderId: $orderId, geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class $UpdateDeliveryGeoPointDtoCopyWith<$Res> {
  factory $UpdateDeliveryGeoPointDtoCopyWith(UpdateDeliveryGeoPointDto value,
          $Res Function(UpdateDeliveryGeoPointDto) _then) =
      _$UpdateDeliveryGeoPointDtoCopyWithImpl;
  @useResult
  $Res call({String orderId, @GeoPointConverter() GeoPoint geoPoint});
}

/// @nodoc
class _$UpdateDeliveryGeoPointDtoCopyWithImpl<$Res>
    implements $UpdateDeliveryGeoPointDtoCopyWith<$Res> {
  _$UpdateDeliveryGeoPointDtoCopyWithImpl(this._self, this._then);

  final UpdateDeliveryGeoPointDto _self;
  final $Res Function(UpdateDeliveryGeoPointDto) _then;

  /// Create a copy of UpdateDeliveryGeoPointDto
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
@JsonSerializable(createFactory: false)
class _UpdateDeliveryGeoPointDto implements UpdateDeliveryGeoPointDto {
  const _UpdateDeliveryGeoPointDto(
      {required this.orderId, @GeoPointConverter() required this.geoPoint});

  @override
  final String orderId;
  @override
  @GeoPointConverter()
  final GeoPoint geoPoint;

  /// Create a copy of UpdateDeliveryGeoPointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateDeliveryGeoPointDtoCopyWith<_UpdateDeliveryGeoPointDto>
      get copyWith =>
          __$UpdateDeliveryGeoPointDtoCopyWithImpl<_UpdateDeliveryGeoPointDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateDeliveryGeoPointDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateDeliveryGeoPointDto &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, geoPoint);

  @override
  String toString() {
    return 'UpdateDeliveryGeoPointDto(orderId: $orderId, geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class _$UpdateDeliveryGeoPointDtoCopyWith<$Res>
    implements $UpdateDeliveryGeoPointDtoCopyWith<$Res> {
  factory _$UpdateDeliveryGeoPointDtoCopyWith(_UpdateDeliveryGeoPointDto value,
          $Res Function(_UpdateDeliveryGeoPointDto) _then) =
      __$UpdateDeliveryGeoPointDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String orderId, @GeoPointConverter() GeoPoint geoPoint});
}

/// @nodoc
class __$UpdateDeliveryGeoPointDtoCopyWithImpl<$Res>
    implements _$UpdateDeliveryGeoPointDtoCopyWith<$Res> {
  __$UpdateDeliveryGeoPointDtoCopyWithImpl(this._self, this._then);

  final _UpdateDeliveryGeoPointDto _self;
  final $Res Function(_UpdateDeliveryGeoPointDto) _then;

  /// Create a copy of UpdateDeliveryGeoPointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? geoPoint = null,
  }) {
    return _then(_UpdateDeliveryGeoPointDto(
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
