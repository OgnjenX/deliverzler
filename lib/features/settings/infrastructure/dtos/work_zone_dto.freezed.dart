// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_zone_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkZoneDto {
  double get latitude;
  double get longitude;
  double get radiusKm;

  /// Create a copy of WorkZoneDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkZoneDtoCopyWith<WorkZoneDto> get copyWith =>
      _$WorkZoneDtoCopyWithImpl<WorkZoneDto>(this as WorkZoneDto, _$identity);

  /// Serializes this WorkZoneDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkZoneDto &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.radiusKm, radiusKm) ||
                other.radiusKm == radiusKm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, radiusKm);

  @override
  String toString() {
    return 'WorkZoneDto(latitude: $latitude, longitude: $longitude, radiusKm: $radiusKm)';
  }
}

/// @nodoc
abstract mixin class $WorkZoneDtoCopyWith<$Res> {
  factory $WorkZoneDtoCopyWith(
          WorkZoneDto value, $Res Function(WorkZoneDto) _then) =
      _$WorkZoneDtoCopyWithImpl;
  @useResult
  $Res call({double latitude, double longitude, double radiusKm});
}

/// @nodoc
class _$WorkZoneDtoCopyWithImpl<$Res> implements $WorkZoneDtoCopyWith<$Res> {
  _$WorkZoneDtoCopyWithImpl(this._self, this._then);

  final WorkZoneDto _self;
  final $Res Function(WorkZoneDto) _then;

  /// Create a copy of WorkZoneDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? radiusKm = null,
  }) {
    return _then(_self.copyWith(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      radiusKm: null == radiusKm
          ? _self.radiusKm
          : radiusKm // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WorkZoneDto implements WorkZoneDto {
  const _WorkZoneDto(
      {required this.latitude,
      required this.longitude,
      required this.radiusKm});
  factory _WorkZoneDto.fromJson(Map<String, dynamic> json) =>
      _$WorkZoneDtoFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double radiusKm;

  /// Create a copy of WorkZoneDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkZoneDtoCopyWith<_WorkZoneDto> get copyWith =>
      __$WorkZoneDtoCopyWithImpl<_WorkZoneDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkZoneDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkZoneDto &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.radiusKm, radiusKm) ||
                other.radiusKm == radiusKm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, radiusKm);

  @override
  String toString() {
    return 'WorkZoneDto(latitude: $latitude, longitude: $longitude, radiusKm: $radiusKm)';
  }
}

/// @nodoc
abstract mixin class _$WorkZoneDtoCopyWith<$Res>
    implements $WorkZoneDtoCopyWith<$Res> {
  factory _$WorkZoneDtoCopyWith(
          _WorkZoneDto value, $Res Function(_WorkZoneDto) _then) =
      __$WorkZoneDtoCopyWithImpl;
  @override
  @useResult
  $Res call({double latitude, double longitude, double radiusKm});
}

/// @nodoc
class __$WorkZoneDtoCopyWithImpl<$Res> implements _$WorkZoneDtoCopyWith<$Res> {
  __$WorkZoneDtoCopyWithImpl(this._self, this._then);

  final _WorkZoneDto _self;
  final $Res Function(_WorkZoneDto) _then;

  /// Create a copy of WorkZoneDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? radiusKm = null,
  }) {
    return _then(_WorkZoneDto(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      radiusKm: null == radiusKm
          ? _self.radiusKm
          : radiusKm // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
