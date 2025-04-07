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
  Map<String, bool> get selectedDays; // Days of the week (Mon-Sun)
  Map<String, TimeOfDay?> get startTimes; // Start time for each day
  Map<String, TimeOfDay?> get endTimes; // End time for each day
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
            const DeepCollectionEquality()
                .equals(other.selectedDays, selectedDays) &&
            const DeepCollectionEquality()
                .equals(other.startTimes, startTimes) &&
            const DeepCollectionEquality().equals(other.endTimes, endTimes) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDays),
      const DeepCollectionEquality().hash(startTimes),
      const DeepCollectionEquality().hash(endTimes),
      timeZone);

  @override
  String toString() {
    return 'WorkHours(selectedDays: $selectedDays, startTimes: $startTimes, endTimes: $endTimes, timeZone: $timeZone)';
  }
}

/// @nodoc
abstract mixin class $WorkHoursCopyWith<$Res> {
  factory $WorkHoursCopyWith(WorkHours value, $Res Function(WorkHours) _then) =
      _$WorkHoursCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, bool> selectedDays,
      Map<String, TimeOfDay?> startTimes,
      Map<String, TimeOfDay?> endTimes,
      String timeZone});
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
    Object? selectedDays = null,
    Object? startTimes = null,
    Object? endTimes = null,
    Object? timeZone = null,
  }) {
    return _then(_self.copyWith(
      selectedDays: null == selectedDays
          ? _self.selectedDays
          : selectedDays // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      startTimes: null == startTimes
          ? _self.startTimes
          : startTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, TimeOfDay?>,
      endTimes: null == endTimes
          ? _self.endTimes
          : endTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, TimeOfDay?>,
      timeZone: null == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _WorkHours implements WorkHours {
  const _WorkHours(
      {required final Map<String, bool> selectedDays,
      required final Map<String, TimeOfDay?> startTimes,
      required final Map<String, TimeOfDay?> endTimes,
      required this.timeZone})
      : _selectedDays = selectedDays,
        _startTimes = startTimes,
        _endTimes = endTimes;

  final Map<String, bool> _selectedDays;
  @override
  Map<String, bool> get selectedDays {
    if (_selectedDays is EqualUnmodifiableMapView) return _selectedDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedDays);
  }

// Days of the week (Mon-Sun)
  final Map<String, TimeOfDay?> _startTimes;
// Days of the week (Mon-Sun)
  @override
  Map<String, TimeOfDay?> get startTimes {
    if (_startTimes is EqualUnmodifiableMapView) return _startTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_startTimes);
  }

// Start time for each day
  final Map<String, TimeOfDay?> _endTimes;
// Start time for each day
  @override
  Map<String, TimeOfDay?> get endTimes {
    if (_endTimes is EqualUnmodifiableMapView) return _endTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_endTimes);
  }

// End time for each day
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
            const DeepCollectionEquality()
                .equals(other._selectedDays, _selectedDays) &&
            const DeepCollectionEquality()
                .equals(other._startTimes, _startTimes) &&
            const DeepCollectionEquality().equals(other._endTimes, _endTimes) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedDays),
      const DeepCollectionEquality().hash(_startTimes),
      const DeepCollectionEquality().hash(_endTimes),
      timeZone);

  @override
  String toString() {
    return 'WorkHours(selectedDays: $selectedDays, startTimes: $startTimes, endTimes: $endTimes, timeZone: $timeZone)';
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
  $Res call(
      {Map<String, bool> selectedDays,
      Map<String, TimeOfDay?> startTimes,
      Map<String, TimeOfDay?> endTimes,
      String timeZone});
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
    Object? selectedDays = null,
    Object? startTimes = null,
    Object? endTimes = null,
    Object? timeZone = null,
  }) {
    return _then(_WorkHours(
      selectedDays: null == selectedDays
          ? _self._selectedDays
          : selectedDays // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      startTimes: null == startTimes
          ? _self._startTimes
          : startTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, TimeOfDay?>,
      endTimes: null == endTimes
          ? _self._endTimes
          : endTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, TimeOfDay?>,
      timeZone: null == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
