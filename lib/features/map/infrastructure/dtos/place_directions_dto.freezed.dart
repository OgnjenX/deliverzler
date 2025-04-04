// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_directions_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceDirectionsDto {
  @JsonKey(fromJson: _fromJsonBounds)
  LatLngBounds get bounds;
  @JsonKey(name: 'overview_polyline', fromJson: _fromJsonPolylinePoints)
  List<PointLatLng> get polylinePoints;
  @JsonKey(readValue: _readDistance)
  int get distance;
  @JsonKey(readValue: _readDuration)
  String get duration;

  /// Create a copy of PlaceDirectionsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDirectionsDtoCopyWith<PlaceDirectionsDto> get copyWith =>
      _$PlaceDirectionsDtoCopyWithImpl<PlaceDirectionsDto>(
          this as PlaceDirectionsDto, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDirectionsDto &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            const DeepCollectionEquality()
                .equals(other.polylinePoints, polylinePoints) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bounds,
      const DeepCollectionEquality().hash(polylinePoints), distance, duration);

  @override
  String toString() {
    return 'PlaceDirectionsDto(bounds: $bounds, polylinePoints: $polylinePoints, distance: $distance, duration: $duration)';
  }
}

/// @nodoc
abstract mixin class $PlaceDirectionsDtoCopyWith<$Res> {
  factory $PlaceDirectionsDtoCopyWith(
          PlaceDirectionsDto value, $Res Function(PlaceDirectionsDto) _then) =
      _$PlaceDirectionsDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _fromJsonBounds) LatLngBounds bounds,
      @JsonKey(name: 'overview_polyline', fromJson: _fromJsonPolylinePoints)
      List<PointLatLng> polylinePoints,
      @JsonKey(readValue: _readDistance) int distance,
      @JsonKey(readValue: _readDuration) String duration});
}

/// @nodoc
class _$PlaceDirectionsDtoCopyWithImpl<$Res>
    implements $PlaceDirectionsDtoCopyWith<$Res> {
  _$PlaceDirectionsDtoCopyWithImpl(this._self, this._then);

  final PlaceDirectionsDto _self;
  final $Res Function(PlaceDirectionsDto) _then;

  /// Create a copy of PlaceDirectionsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? polylinePoints = null,
    Object? distance = null,
    Object? duration = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _PlaceDirectionsDto extends PlaceDirectionsDto {
  const _PlaceDirectionsDto(
      {@JsonKey(fromJson: _fromJsonBounds) required this.bounds,
      @JsonKey(name: 'overview_polyline', fromJson: _fromJsonPolylinePoints)
      required final List<PointLatLng> polylinePoints,
      @JsonKey(readValue: _readDistance) required this.distance,
      @JsonKey(readValue: _readDuration) required this.duration})
      : _polylinePoints = polylinePoints,
        super._();
  factory _PlaceDirectionsDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceDirectionsDtoFromJson(json);

  @override
  @JsonKey(fromJson: _fromJsonBounds)
  final LatLngBounds bounds;
  final List<PointLatLng> _polylinePoints;
  @override
  @JsonKey(name: 'overview_polyline', fromJson: _fromJsonPolylinePoints)
  List<PointLatLng> get polylinePoints {
    if (_polylinePoints is EqualUnmodifiableListView) return _polylinePoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polylinePoints);
  }

  @override
  @JsonKey(readValue: _readDistance)
  final int distance;
  @override
  @JsonKey(readValue: _readDuration)
  final String duration;

  /// Create a copy of PlaceDirectionsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDirectionsDtoCopyWith<_PlaceDirectionsDto> get copyWith =>
      __$PlaceDirectionsDtoCopyWithImpl<_PlaceDirectionsDto>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDirectionsDto &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            const DeepCollectionEquality()
                .equals(other._polylinePoints, _polylinePoints) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bounds,
      const DeepCollectionEquality().hash(_polylinePoints), distance, duration);

  @override
  String toString() {
    return 'PlaceDirectionsDto(bounds: $bounds, polylinePoints: $polylinePoints, distance: $distance, duration: $duration)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDirectionsDtoCopyWith<$Res>
    implements $PlaceDirectionsDtoCopyWith<$Res> {
  factory _$PlaceDirectionsDtoCopyWith(
          _PlaceDirectionsDto value, $Res Function(_PlaceDirectionsDto) _then) =
      __$PlaceDirectionsDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _fromJsonBounds) LatLngBounds bounds,
      @JsonKey(name: 'overview_polyline', fromJson: _fromJsonPolylinePoints)
      List<PointLatLng> polylinePoints,
      @JsonKey(readValue: _readDistance) int distance,
      @JsonKey(readValue: _readDuration) String duration});
}

/// @nodoc
class __$PlaceDirectionsDtoCopyWithImpl<$Res>
    implements _$PlaceDirectionsDtoCopyWith<$Res> {
  __$PlaceDirectionsDtoCopyWithImpl(this._self, this._then);

  final _PlaceDirectionsDto _self;
  final $Res Function(_PlaceDirectionsDto) _then;

  /// Create a copy of PlaceDirectionsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bounds = null,
    Object? polylinePoints = null,
    Object? distance = null,
    Object? duration = null,
  }) {
    return _then(_PlaceDirectionsDto(
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
    ));
  }
}

/// @nodoc
mixin _$PlaceDirectionsQueryDto {
  @JsonKey(toJson: _toJsonOrigin)
  Position get origin;
  @JsonKey(toJson: _toJsonDestination)
  GeoPoint get destination;

  /// Create a copy of PlaceDirectionsQueryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceDirectionsQueryDtoCopyWith<PlaceDirectionsQueryDto> get copyWith =>
      _$PlaceDirectionsQueryDtoCopyWithImpl<PlaceDirectionsQueryDto>(
          this as PlaceDirectionsQueryDto, _$identity);

  /// Serializes this PlaceDirectionsQueryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceDirectionsQueryDto &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, origin, destination);

  @override
  String toString() {
    return 'PlaceDirectionsQueryDto(origin: $origin, destination: $destination)';
  }
}

/// @nodoc
abstract mixin class $PlaceDirectionsQueryDtoCopyWith<$Res> {
  factory $PlaceDirectionsQueryDtoCopyWith(PlaceDirectionsQueryDto value,
          $Res Function(PlaceDirectionsQueryDto) _then) =
      _$PlaceDirectionsQueryDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(toJson: _toJsonOrigin) Position origin,
      @JsonKey(toJson: _toJsonDestination) GeoPoint destination});
}

/// @nodoc
class _$PlaceDirectionsQueryDtoCopyWithImpl<$Res>
    implements $PlaceDirectionsQueryDtoCopyWith<$Res> {
  _$PlaceDirectionsQueryDtoCopyWithImpl(this._self, this._then);

  final PlaceDirectionsQueryDto _self;
  final $Res Function(PlaceDirectionsQueryDto) _then;

  /// Create a copy of PlaceDirectionsQueryDto
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
@JsonSerializable(createFactory: false)
class _PlaceDirectionsQueryDto implements PlaceDirectionsQueryDto {
  const _PlaceDirectionsQueryDto(
      {@JsonKey(toJson: _toJsonOrigin) required this.origin,
      @JsonKey(toJson: _toJsonDestination) required this.destination});

  @override
  @JsonKey(toJson: _toJsonOrigin)
  final Position origin;
  @override
  @JsonKey(toJson: _toJsonDestination)
  final GeoPoint destination;

  /// Create a copy of PlaceDirectionsQueryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceDirectionsQueryDtoCopyWith<_PlaceDirectionsQueryDto> get copyWith =>
      __$PlaceDirectionsQueryDtoCopyWithImpl<_PlaceDirectionsQueryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceDirectionsQueryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceDirectionsQueryDto &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, origin, destination);

  @override
  String toString() {
    return 'PlaceDirectionsQueryDto(origin: $origin, destination: $destination)';
  }
}

/// @nodoc
abstract mixin class _$PlaceDirectionsQueryDtoCopyWith<$Res>
    implements $PlaceDirectionsQueryDtoCopyWith<$Res> {
  factory _$PlaceDirectionsQueryDtoCopyWith(_PlaceDirectionsQueryDto value,
          $Res Function(_PlaceDirectionsQueryDto) _then) =
      __$PlaceDirectionsQueryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: _toJsonOrigin) Position origin,
      @JsonKey(toJson: _toJsonDestination) GeoPoint destination});
}

/// @nodoc
class __$PlaceDirectionsQueryDtoCopyWithImpl<$Res>
    implements _$PlaceDirectionsQueryDtoCopyWith<$Res> {
  __$PlaceDirectionsQueryDtoCopyWithImpl(this._self, this._then);

  final _PlaceDirectionsQueryDto _self;
  final $Res Function(_PlaceDirectionsQueryDto) _then;

  /// Create a copy of PlaceDirectionsQueryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? origin = null,
    Object? destination = null,
  }) {
    return _then(_PlaceDirectionsQueryDto(
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
