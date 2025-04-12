// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_directions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceDirections {
  LatLngBounds get bounds;
  List<PointLatLng> get polylinePoints;
  int get distance;
  String get duration;
  int get durationValue;

  /// Create a copy of PlaceDirections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDirectionsCopyWith<PlaceDirections> get copyWith =>
      _$PlaceDirectionsCopyWithImpl<PlaceDirections>(
          this as PlaceDirections, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDirections &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            const DeepCollectionEquality()
                .equals(other.polylinePoints, polylinePoints) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationValue, durationValue) ||
                other.durationValue == durationValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bounds,
      const DeepCollectionEquality().hash(polylinePoints),
      distance,
      duration,
      durationValue);

  @override
  String toString() {
    return 'PlaceDirections(bounds: $bounds, polylinePoints: $polylinePoints, distance: $distance, duration: $duration, durationValue: $durationValue)';
  }
}

/// @nodoc
abstract mixin class $PlaceDirectionsCopyWith<$Res> {
  factory $PlaceDirectionsCopyWith(
          PlaceDirections value, $Res Function(PlaceDirections) _then) =
      _$PlaceDirectionsCopyWithImpl;
  @useResult
  $Res call(
      {LatLngBounds bounds,
      List<PointLatLng> polylinePoints,
      int distance,
      String duration,
      int durationValue});
}

/// @nodoc
class _$PlaceDirectionsCopyWithImpl<$Res>
    implements $PlaceDirectionsCopyWith<$Res> {
  _$PlaceDirectionsCopyWithImpl(this._self, this._then);

  final PlaceDirections _self;
  final $Res Function(PlaceDirections) _then;

  /// Create a copy of PlaceDirections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? polylinePoints = null,
    Object? distance = null,
    Object? duration = null,
    Object? durationValue = null,
  }) {
    return _then(_self.copyWith(
      bounds: null == bounds
          ? _self.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      polylinePoints: null == polylinePoints
          ? _self.polylinePoints
          : polylinePoints // ignore: cast_nullable_to_non_nullable
              as List<PointLatLng>,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      durationValue: null == durationValue
          ? _self.durationValue
          : durationValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _PlaceDirections implements PlaceDirections {
  const _PlaceDirections(
      {required this.bounds,
      required final List<PointLatLng> polylinePoints,
      required this.distance,
      required this.duration,
      required this.durationValue})
      : _polylinePoints = polylinePoints;

  @override
  final LatLngBounds bounds;
  final List<PointLatLng> _polylinePoints;
  @override
  List<PointLatLng> get polylinePoints {
    if (_polylinePoints is EqualUnmodifiableListView) return _polylinePoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polylinePoints);
  }

  @override
  final int distance;
  @override
  final String duration;
  @override
  final int durationValue;

  /// Create a copy of PlaceDirections
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDirectionsCopyWith<_PlaceDirections> get copyWith =>
      __$PlaceDirectionsCopyWithImpl<_PlaceDirections>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDirections &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            const DeepCollectionEquality()
                .equals(other._polylinePoints, _polylinePoints) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationValue, durationValue) ||
                other.durationValue == durationValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bounds,
      const DeepCollectionEquality().hash(_polylinePoints),
      distance,
      duration,
      durationValue);

  @override
  String toString() {
    return 'PlaceDirections(bounds: $bounds, polylinePoints: $polylinePoints, distance: $distance, duration: $duration, durationValue: $durationValue)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDirectionsCopyWith<$Res>
    implements $PlaceDirectionsCopyWith<$Res> {
  factory _$PlaceDirectionsCopyWith(
          _PlaceDirections value, $Res Function(_PlaceDirections) _then) =
      __$PlaceDirectionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {LatLngBounds bounds,
      List<PointLatLng> polylinePoints,
      int distance,
      String duration,
      int durationValue});
}

/// @nodoc
class __$PlaceDirectionsCopyWithImpl<$Res>
    implements _$PlaceDirectionsCopyWith<$Res> {
  __$PlaceDirectionsCopyWithImpl(this._self, this._then);

  final _PlaceDirections _self;
  final $Res Function(_PlaceDirections) _then;

  /// Create a copy of PlaceDirections
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bounds = null,
    Object? polylinePoints = null,
    Object? distance = null,
    Object? duration = null,
    Object? durationValue = null,
  }) {
    return _then(_PlaceDirections(
      bounds: null == bounds
          ? _self.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      polylinePoints: null == polylinePoints
          ? _self._polylinePoints
          : polylinePoints // ignore: cast_nullable_to_non_nullable
              as List<PointLatLng>,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      durationValue: null == durationValue
          ? _self.durationValue
          : durationValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$PlaceDirectionsQuery {
  Position get origin;
  GeoPoint get destination;

  /// Create a copy of PlaceDirectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDirectionsQueryCopyWith<PlaceDirectionsQuery> get copyWith =>
      _$PlaceDirectionsQueryCopyWithImpl<PlaceDirectionsQuery>(
          this as PlaceDirectionsQuery, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDirectionsQuery &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, origin, destination);

  @override
  String toString() {
    return 'PlaceDirectionsQuery(origin: $origin, destination: $destination)';
  }
}

/// @nodoc
abstract mixin class $PlaceDirectionsQueryCopyWith<$Res> {
  factory $PlaceDirectionsQueryCopyWith(PlaceDirectionsQuery value,
          $Res Function(PlaceDirectionsQuery) _then) =
      _$PlaceDirectionsQueryCopyWithImpl;
  @useResult
  $Res call({Position origin, GeoPoint destination});
}

/// @nodoc
class _$PlaceDirectionsQueryCopyWithImpl<$Res>
    implements $PlaceDirectionsQueryCopyWith<$Res> {
  _$PlaceDirectionsQueryCopyWithImpl(this._self, this._then);

  final PlaceDirectionsQuery _self;
  final $Res Function(PlaceDirectionsQuery) _then;

  /// Create a copy of PlaceDirectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? destination = null,
  }) {
    return _then(_self.copyWith(
      origin: null == origin
          ? _self.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Position,
      destination: null == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc

class _PlaceDirectionsQuery implements PlaceDirectionsQuery {
  const _PlaceDirectionsQuery(
      {required this.origin, required this.destination});

  @override
  final Position origin;
  @override
  final GeoPoint destination;

  /// Create a copy of PlaceDirectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDirectionsQueryCopyWith<_PlaceDirectionsQuery> get copyWith =>
      __$PlaceDirectionsQueryCopyWithImpl<_PlaceDirectionsQuery>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDirectionsQuery &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, origin, destination);

  @override
  String toString() {
    return 'PlaceDirectionsQuery(origin: $origin, destination: $destination)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDirectionsQueryCopyWith<$Res>
    implements $PlaceDirectionsQueryCopyWith<$Res> {
  factory _$PlaceDirectionsQueryCopyWith(_PlaceDirectionsQuery value,
          $Res Function(_PlaceDirectionsQuery) _then) =
      __$PlaceDirectionsQueryCopyWithImpl;
  @override
  @useResult
  $Res call({Position origin, GeoPoint destination});
}

/// @nodoc
class __$PlaceDirectionsQueryCopyWithImpl<$Res>
    implements _$PlaceDirectionsQueryCopyWith<$Res> {
  __$PlaceDirectionsQueryCopyWithImpl(this._self, this._then);

  final _PlaceDirectionsQuery _self;
  final $Res Function(_PlaceDirectionsQuery) _then;

  /// Create a copy of PlaceDirectionsQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? origin = null,
    Object? destination = null,
  }) {
    return _then(_PlaceDirectionsQuery(
      origin: null == origin
          ? _self.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Position,
      destination: null == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

// dart format on
