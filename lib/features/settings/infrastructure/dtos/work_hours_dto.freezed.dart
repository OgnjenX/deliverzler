// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_hours_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkHoursDto {
  Map<String, Map<String, String>?>
      get days; // Map of day name to schedule with start/end times
  String get timeZone;

  /// Create a copy of WorkHoursDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkHoursDtoCopyWith<WorkHoursDto> get copyWith =>
      _$WorkHoursDtoCopyWithImpl<WorkHoursDto>(
          this as WorkHoursDto, _$identity);

  /// Serializes this WorkHoursDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkHoursDto &&
            const DeepCollectionEquality().equals(other.days, days) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(days), timeZone);

  @override
  String toString() {
    return 'WorkHoursDto(days: $days, timeZone: $timeZone)';
  }
}

/// @nodoc
abstract mixin class $WorkHoursDtoCopyWith<$Res> {
  factory $WorkHoursDtoCopyWith(
          WorkHoursDto value, $Res Function(WorkHoursDto) _then) =
      _$WorkHoursDtoCopyWithImpl;
  @useResult
  $Res call({Map<String, Map<String, String>?> days, String timeZone});
}

/// @nodoc
class _$WorkHoursDtoCopyWithImpl<$Res> implements $WorkHoursDtoCopyWith<$Res> {
  _$WorkHoursDtoCopyWithImpl(this._self, this._then);

  final WorkHoursDto _self;
  final $Res Function(WorkHoursDto) _then;

  /// Create a copy of WorkHoursDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? timeZone = null,
  }) {
    return _then(_self.copyWith(
      days: null == days
          ? _self.days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>?>,
      timeZone: null == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WorkHoursDto implements WorkHoursDto {
  const _WorkHoursDto(
      {required final Map<String, Map<String, String>?> days,
      required this.timeZone})
      : _days = days;
  factory _WorkHoursDto.fromJson(Map<String, dynamic> json) =>
      _$WorkHoursDtoFromJson(json);

  final Map<String, Map<String, String>?> _days;
  @override
  Map<String, Map<String, String>?> get days {
    if (_days is EqualUnmodifiableMapView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_days);
  }

// Map of day name to schedule with start/end times
  @override
  final String timeZone;

  /// Create a copy of WorkHoursDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkHoursDtoCopyWith<_WorkHoursDto> get copyWith =>
      __$WorkHoursDtoCopyWithImpl<_WorkHoursDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkHoursDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkHoursDto &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_days), timeZone);

  @override
  String toString() {
    return 'WorkHoursDto(days: $days, timeZone: $timeZone)';
  }
}

/// @nodoc
abstract mixin class _$WorkHoursDtoCopyWith<$Res>
    implements $WorkHoursDtoCopyWith<$Res> {
  factory _$WorkHoursDtoCopyWith(
          _WorkHoursDto value, $Res Function(_WorkHoursDto) _then) =
      __$WorkHoursDtoCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, Map<String, String>?> days, String timeZone});
}

/// @nodoc
class __$WorkHoursDtoCopyWithImpl<$Res>
    implements _$WorkHoursDtoCopyWith<$Res> {
  __$WorkHoursDtoCopyWithImpl(this._self, this._then);

  final _WorkHoursDto _self;
  final $Res Function(_WorkHoursDto) _then;

  /// Create a copy of WorkHoursDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? days = null,
    Object? timeZone = null,
  }) {
    return _then(_WorkHoursDto(
      days: null == days
          ? _self._days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>?>,
      timeZone: null == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
