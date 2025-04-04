// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceDetailsDto {
  @JsonKey(name: 'geometry', fromJson: _fromJsonGeoPoint)
  GeoPoint get geoPoint;

  /// Create a copy of PlaceDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDetailsDtoCopyWith<PlaceDetailsDto> get copyWith =>
      _$PlaceDetailsDtoCopyWithImpl<PlaceDetailsDto>(
          this as PlaceDetailsDto, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDetailsDto &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, geoPoint);

  @override
  String toString() {
    return 'PlaceDetailsDto(geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class $PlaceDetailsDtoCopyWith<$Res> {
  factory $PlaceDetailsDtoCopyWith(
          PlaceDetailsDto value, $Res Function(PlaceDetailsDto) _then) =
      _$PlaceDetailsDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'geometry', fromJson: _fromJsonGeoPoint)
      GeoPoint geoPoint});
}

/// @nodoc
class _$PlaceDetailsDtoCopyWithImpl<$Res>
    implements $PlaceDetailsDtoCopyWith<$Res> {
  _$PlaceDetailsDtoCopyWithImpl(this._self, this._then);

  final PlaceDetailsDto _self;
  final $Res Function(PlaceDetailsDto) _then;

  /// Create a copy of PlaceDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoPoint = null,
  }) {
    return _then(_self.copyWith(
      geoPoint: null == geoPoint
          ? _self.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _PlaceDetailsDto extends PlaceDetailsDto {
  const _PlaceDetailsDto(
      {@JsonKey(name: 'geometry', fromJson: _fromJsonGeoPoint)
      required this.geoPoint})
      : super._();
  factory _PlaceDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsDtoFromJson(json);

  @override
  @JsonKey(name: 'geometry', fromJson: _fromJsonGeoPoint)
  final GeoPoint geoPoint;

  /// Create a copy of PlaceDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDetailsDtoCopyWith<_PlaceDetailsDto> get copyWith =>
      __$PlaceDetailsDtoCopyWithImpl<_PlaceDetailsDto>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDetailsDto &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, geoPoint);

  @override
  String toString() {
    return 'PlaceDetailsDto(geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDetailsDtoCopyWith<$Res>
    implements $PlaceDetailsDtoCopyWith<$Res> {
  factory _$PlaceDetailsDtoCopyWith(
          _PlaceDetailsDto value, $Res Function(_PlaceDetailsDto) _then) =
      __$PlaceDetailsDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'geometry', fromJson: _fromJsonGeoPoint)
      GeoPoint geoPoint});
}

/// @nodoc
class __$PlaceDetailsDtoCopyWithImpl<$Res>
    implements _$PlaceDetailsDtoCopyWith<$Res> {
  __$PlaceDetailsDtoCopyWithImpl(this._self, this._then);

  final _PlaceDetailsDto _self;
  final $Res Function(_PlaceDetailsDto) _then;

  /// Create a copy of PlaceDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? geoPoint = null,
  }) {
    return _then(_PlaceDetailsDto(
      geoPoint: null == geoPoint
          ? _self.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

// dart format on
