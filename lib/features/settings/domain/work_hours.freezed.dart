// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkHours {
  Map<String, DaySchedule?> get days; // Map of day name to schedule
  String get timeZone;

  /// Create a copy of WorkHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkHoursCopyWith<WorkHours> get copyWith =>
      _$WorkHoursCopyWithImpl<WorkHours>(this as WorkHours, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkHours &&
            const DeepCollectionEquality().equals(other.days, days) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(days), timeZone);

  @override
  String toString() {
    return 'WorkHours(days: $days, timeZone: $timeZone)';
  }
}

/// @nodoc
abstract mixin class $WorkHoursCopyWith<$Res> {
  factory $WorkHoursCopyWith(WorkHours value, $Res Function(WorkHours) _then) =
      _$WorkHoursCopyWithImpl;
  @useResult
  $Res call({Map<String, DaySchedule?> days, String timeZone});
}

/// @nodoc
class _$WorkHoursCopyWithImpl<$Res> implements $WorkHoursCopyWith<$Res> {
  _$WorkHoursCopyWithImpl(this._self, this._then);

  final WorkHours _self;
  final $Res Function(WorkHours) _then;

  /// Create a copy of WorkHours
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
              as Map<String, DaySchedule?>,
      timeZone: null == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _WorkHours extends WorkHours {
  const _WorkHours(
      {required final Map<String, DaySchedule?> days, required this.timeZone})
      : _days = days,
        super._();

  final Map<String, DaySchedule?> _days;
  @override
  Map<String, DaySchedule?> get days {
    if (_days is EqualUnmodifiableMapView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_days);
  }

// Map of day name to schedule
  @override
  final String timeZone;

  /// Create a copy of WorkHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkHoursCopyWith<_WorkHours> get copyWith =>
      __$WorkHoursCopyWithImpl<_WorkHours>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkHours &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_days), timeZone);

  @override
  String toString() {
    return 'WorkHours(days: $days, timeZone: $timeZone)';
  }
}

/// @nodoc
abstract mixin class _$WorkHoursCopyWith<$Res>
    implements $WorkHoursCopyWith<$Res> {
  factory _$WorkHoursCopyWith(
          _WorkHours value, $Res Function(_WorkHours) _then) =
      __$WorkHoursCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, DaySchedule?> days, String timeZone});
}

/// @nodoc
class __$WorkHoursCopyWithImpl<$Res> implements _$WorkHoursCopyWith<$Res> {
  __$WorkHoursCopyWithImpl(this._self, this._then);

  final _WorkHours _self;
  final $Res Function(_WorkHours) _then;

  /// Create a copy of WorkHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? days = null,
    Object? timeZone = null,
  }) {
    return _then(_WorkHours(
      days: null == days
          ? _self._days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<String, DaySchedule?>,
      timeZone: null == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
