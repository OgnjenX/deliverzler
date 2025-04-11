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
  Map<String, dynamic> get center; // GeoFirePoint's `.data`
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
            const DeepCollectionEquality().equals(other.center, center) &&
            (identical(other.radiusKm, radiusKm) ||
                other.radiusKm == radiusKm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(center), radiusKm);

  @override
  String toString() {
    return 'WorkZoneDto(center: $center, radiusKm: $radiusKm)';
  }
}

/// @nodoc
abstract mixin class $WorkZoneDtoCopyWith<$Res> {
  factory $WorkZoneDtoCopyWith(
          WorkZoneDto value, $Res Function(WorkZoneDto) _then) =
      _$WorkZoneDtoCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> center, double radiusKm});
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
    Object? center = null,
    Object? radiusKm = null,
  }) {
    return _then(_self.copyWith(
      center: null == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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
      {required final Map<String, dynamic> center, required this.radiusKm})
      : _center = center;
  factory _WorkZoneDto.fromJson(Map<String, dynamic> json) =>
      _$WorkZoneDtoFromJson(json);

  final Map<String, dynamic> _center;
  @override
  Map<String, dynamic> get center {
    if (_center is EqualUnmodifiableMapView) return _center;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_center);
  }

// GeoFirePoint's `.data`
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
            const DeepCollectionEquality().equals(other._center, _center) &&
            (identical(other.radiusKm, radiusKm) ||
                other.radiusKm == radiusKm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_center), radiusKm);

  @override
  String toString() {
    return 'WorkZoneDto(center: $center, radiusKm: $radiusKm)';
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
  $Res call({Map<String, dynamic> center, double radiusKm});
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
    Object? center = null,
    Object? radiusKm = null,
  }) {
    return _then(_WorkZoneDto(
      center: null == center
          ? _self._center
          : center // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      radiusKm: null == radiusKm
          ? _self.radiusKm
          : radiusKm // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
