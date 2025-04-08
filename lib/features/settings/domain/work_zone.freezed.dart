// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_zone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkZone {
  double get latitude;
  double get longitude;
  double get radiusKm;

  /// Create a copy of WorkZone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkZoneCopyWith<WorkZone> get copyWith =>
      _$WorkZoneCopyWithImpl<WorkZone>(this as WorkZone, _$identity);

  /// Serializes this WorkZone to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkZone &&
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
    return 'WorkZone(latitude: $latitude, longitude: $longitude, radiusKm: $radiusKm)';
  }
}

/// @nodoc
abstract mixin class $WorkZoneCopyWith<$Res> {
  factory $WorkZoneCopyWith(WorkZone value, $Res Function(WorkZone) _then) =
      _$WorkZoneCopyWithImpl;
  @useResult
  $Res call({double latitude, double longitude, double radiusKm});
}

/// @nodoc
class _$WorkZoneCopyWithImpl<$Res> implements $WorkZoneCopyWith<$Res> {
  _$WorkZoneCopyWithImpl(this._self, this._then);

  final WorkZone _self;
  final $Res Function(WorkZone) _then;

  /// Create a copy of WorkZone
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
class _WorkZone implements WorkZone {
  const _WorkZone(
      {required this.latitude,
      required this.longitude,
      required this.radiusKm});
  factory _WorkZone.fromJson(Map<String, dynamic> json) =>
      _$WorkZoneFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double radiusKm;

  /// Create a copy of WorkZone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkZoneCopyWith<_WorkZone> get copyWith =>
      __$WorkZoneCopyWithImpl<_WorkZone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkZoneToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkZone &&
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
    return 'WorkZone(latitude: $latitude, longitude: $longitude, radiusKm: $radiusKm)';
  }
}

/// @nodoc
abstract mixin class _$WorkZoneCopyWith<$Res>
    implements $WorkZoneCopyWith<$Res> {
  factory _$WorkZoneCopyWith(_WorkZone value, $Res Function(_WorkZone) _then) =
      __$WorkZoneCopyWithImpl;
  @override
  @useResult
  $Res call({double latitude, double longitude, double radiusKm});
}

/// @nodoc
class __$WorkZoneCopyWithImpl<$Res> implements _$WorkZoneCopyWith<$Res> {
  __$WorkZoneCopyWithImpl(this._self, this._then);

  final _WorkZone _self;
  final $Res Function(_WorkZone) _then;

  /// Create a copy of WorkZone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? radiusKm = null,
  }) {
    return _then(_WorkZone(
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
