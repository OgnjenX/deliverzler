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
  Map<String, bool> get selectedDays;
  Map<String, String?> get startTimes; // Start times as "HH:mm"
  Map<String, String?> get endTimes; // End times as "HH:mm"
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
            const DeepCollectionEquality()
                .equals(other.selectedDays, selectedDays) &&
            const DeepCollectionEquality()
                .equals(other.startTimes, startTimes) &&
            const DeepCollectionEquality().equals(other.endTimes, endTimes) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDays),
      const DeepCollectionEquality().hash(startTimes),
      const DeepCollectionEquality().hash(endTimes),
      timeZone);

  @override
  String toString() {
    return 'WorkHoursDto(selectedDays: $selectedDays, startTimes: $startTimes, endTimes: $endTimes, timeZone: $timeZone)';
  }
}

/// @nodoc
abstract mixin class $WorkHoursDtoCopyWith<$Res> {
  factory $WorkHoursDtoCopyWith(
          WorkHoursDto value, $Res Function(WorkHoursDto) _then) =
      _$WorkHoursDtoCopyWithImpl;
  @useResult
  $Res call(
      {Map<String, bool> selectedDays,
      Map<String, String?> startTimes,
      Map<String, String?> endTimes,
      String timeZone});
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
              as Map<String, String?>,
      endTimes: null == endTimes
          ? _self.endTimes
          : endTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
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
      {required final Map<String, bool> selectedDays,
      required final Map<String, String?> startTimes,
      required final Map<String, String?> endTimes,
      required this.timeZone})
      : _selectedDays = selectedDays,
        _startTimes = startTimes,
        _endTimes = endTimes;
  factory _WorkHoursDto.fromJson(Map<String, dynamic> json) =>
      _$WorkHoursDtoFromJson(json);

  final Map<String, bool> _selectedDays;
  @override
  Map<String, bool> get selectedDays {
    if (_selectedDays is EqualUnmodifiableMapView) return _selectedDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedDays);
  }

  final Map<String, String?> _startTimes;
  @override
  Map<String, String?> get startTimes {
    if (_startTimes is EqualUnmodifiableMapView) return _startTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_startTimes);
  }

// Start times as "HH:mm"
  final Map<String, String?> _endTimes;
// Start times as "HH:mm"
  @override
  Map<String, String?> get endTimes {
    if (_endTimes is EqualUnmodifiableMapView) return _endTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_endTimes);
  }

// End times as "HH:mm"
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
            const DeepCollectionEquality()
                .equals(other._selectedDays, _selectedDays) &&
            const DeepCollectionEquality()
                .equals(other._startTimes, _startTimes) &&
            const DeepCollectionEquality().equals(other._endTimes, _endTimes) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedDays),
      const DeepCollectionEquality().hash(_startTimes),
      const DeepCollectionEquality().hash(_endTimes),
      timeZone);

  @override
  String toString() {
    return 'WorkHoursDto(selectedDays: $selectedDays, startTimes: $startTimes, endTimes: $endTimes, timeZone: $timeZone)';
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
  $Res call(
      {Map<String, bool> selectedDays,
      Map<String, String?> startTimes,
      Map<String, String?> endTimes,
      String timeZone});
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
    Object? selectedDays = null,
    Object? startTimes = null,
    Object? endTimes = null,
    Object? timeZone = null,
  }) {
    return _then(_WorkHoursDto(
      selectedDays: null == selectedDays
          ? _self._selectedDays
          : selectedDays // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      startTimes: null == startTimes
          ? _self._startTimes
          : startTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
      endTimes: null == endTimes
          ? _self._endTimes
          : endTimes // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
      timeZone: null == timeZone
          ? _self.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
