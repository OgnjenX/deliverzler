// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceDetails {
  GeoPoint get geoPoint;

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDetailsCopyWith<PlaceDetails> get copyWith =>
      _$PlaceDetailsCopyWithImpl<PlaceDetails>(
          this as PlaceDetails, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDetails &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoPoint);

  @override
  String toString() {
    return 'PlaceDetails(geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class $PlaceDetailsCopyWith<$Res> {
  factory $PlaceDetailsCopyWith(
          PlaceDetails value, $Res Function(PlaceDetails) _then) =
      _$PlaceDetailsCopyWithImpl;
  @useResult
  $Res call({GeoPoint geoPoint});
}

/// @nodoc
class _$PlaceDetailsCopyWithImpl<$Res> implements $PlaceDetailsCopyWith<$Res> {
  _$PlaceDetailsCopyWithImpl(this._self, this._then);

  final PlaceDetails _self;
  final $Res Function(PlaceDetails) _then;

  /// Create a copy of PlaceDetails
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

class _PlaceDetails implements PlaceDetails {
  const _PlaceDetails({required this.geoPoint});

  @override
  final GeoPoint geoPoint;

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDetailsCopyWith<_PlaceDetails> get copyWith =>
      __$PlaceDetailsCopyWithImpl<_PlaceDetails>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDetails &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoPoint);

  @override
  String toString() {
    return 'PlaceDetails(geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDetailsCopyWith<$Res>
    implements $PlaceDetailsCopyWith<$Res> {
  factory _$PlaceDetailsCopyWith(
          _PlaceDetails value, $Res Function(_PlaceDetails) _then) =
      __$PlaceDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({GeoPoint geoPoint});
}

/// @nodoc
class __$PlaceDetailsCopyWithImpl<$Res>
    implements _$PlaceDetailsCopyWith<$Res> {
  __$PlaceDetailsCopyWithImpl(this._self, this._then);

  final _PlaceDetails _self;
  final $Res Function(_PlaceDetails) _then;

  /// Create a copy of PlaceDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? geoPoint = null,
  }) {
    return _then(_PlaceDetails(
      geoPoint: null == geoPoint
          ? _self.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

// dart format on
