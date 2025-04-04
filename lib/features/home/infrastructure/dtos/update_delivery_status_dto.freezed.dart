// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_delivery_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDeliveryStatusDto {
  @JsonKey(includeToJson: false)
  String get orderId;
  DeliveryStatus get deliveryStatus;
  @JsonKey(disallowNullValue: true)
  String? get deliveryId;
  @JsonKey(disallowNullValue: true)
  String? get employeeCancelNote;

  /// Create a copy of UpdateDeliveryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateDeliveryStatusDtoCopyWith<UpdateDeliveryStatusDto> get copyWith =>
      _$UpdateDeliveryStatusDtoCopyWithImpl<UpdateDeliveryStatusDto>(
          this as UpdateDeliveryStatusDto, _$identity);

  /// Serializes this UpdateDeliveryStatusDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateDeliveryStatusDto &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.employeeCancelNote, employeeCancelNote) ||
                other.employeeCancelNote == employeeCancelNote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, deliveryStatus, deliveryId, employeeCancelNote);

  @override
  String toString() {
    return 'UpdateDeliveryStatusDto(orderId: $orderId, deliveryStatus: $deliveryStatus, deliveryId: $deliveryId, employeeCancelNote: $employeeCancelNote)';
  }
}

/// @nodoc
abstract mixin class $UpdateDeliveryStatusDtoCopyWith<$Res> {
  factory $UpdateDeliveryStatusDtoCopyWith(UpdateDeliveryStatusDto value,
          $Res Function(UpdateDeliveryStatusDto) _then) =
      _$UpdateDeliveryStatusDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String orderId,
      DeliveryStatus deliveryStatus,
      @JsonKey(disallowNullValue: true) String? deliveryId,
      @JsonKey(disallowNullValue: true) String? employeeCancelNote});
}

/// @nodoc
class _$UpdateDeliveryStatusDtoCopyWithImpl<$Res>
    implements $UpdateDeliveryStatusDtoCopyWith<$Res> {
  _$UpdateDeliveryStatusDtoCopyWithImpl(this._self, this._then);

  final UpdateDeliveryStatusDto _self;
  final $Res Function(UpdateDeliveryStatusDto) _then;

  /// Create a copy of UpdateDeliveryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? deliveryStatus = null,
    Object? deliveryId = freezed,
    Object? employeeCancelNote = freezed,
  }) {
    return _then(_self.copyWith(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _self.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveryId: freezed == deliveryId
          ? _self.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeCancelNote: freezed == employeeCancelNote
          ? _self.employeeCancelNote
          : employeeCancelNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _UpdateDeliveryStatusDto implements UpdateDeliveryStatusDto {
  const _UpdateDeliveryStatusDto(
      {@JsonKey(includeToJson: false) required this.orderId,
      required this.deliveryStatus,
      @JsonKey(disallowNullValue: true) this.deliveryId,
      @JsonKey(disallowNullValue: true) this.employeeCancelNote});

  @override
  @JsonKey(includeToJson: false)
  final String orderId;
  @override
  final DeliveryStatus deliveryStatus;
  @override
  @JsonKey(disallowNullValue: true)
  final String? deliveryId;
  @override
  @JsonKey(disallowNullValue: true)
  final String? employeeCancelNote;

  /// Create a copy of UpdateDeliveryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateDeliveryStatusDtoCopyWith<_UpdateDeliveryStatusDto> get copyWith =>
      __$UpdateDeliveryStatusDtoCopyWithImpl<_UpdateDeliveryStatusDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateDeliveryStatusDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateDeliveryStatusDto &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.employeeCancelNote, employeeCancelNote) ||
                other.employeeCancelNote == employeeCancelNote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, deliveryStatus, deliveryId, employeeCancelNote);

  @override
  String toString() {
    return 'UpdateDeliveryStatusDto(orderId: $orderId, deliveryStatus: $deliveryStatus, deliveryId: $deliveryId, employeeCancelNote: $employeeCancelNote)';
  }
}

/// @nodoc
abstract mixin class _$UpdateDeliveryStatusDtoCopyWith<$Res>
    implements $UpdateDeliveryStatusDtoCopyWith<$Res> {
  factory _$UpdateDeliveryStatusDtoCopyWith(_UpdateDeliveryStatusDto value,
          $Res Function(_UpdateDeliveryStatusDto) _then) =
      __$UpdateDeliveryStatusDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String orderId,
      DeliveryStatus deliveryStatus,
      @JsonKey(disallowNullValue: true) String? deliveryId,
      @JsonKey(disallowNullValue: true) String? employeeCancelNote});
}

/// @nodoc
class __$UpdateDeliveryStatusDtoCopyWithImpl<$Res>
    implements _$UpdateDeliveryStatusDtoCopyWith<$Res> {
  __$UpdateDeliveryStatusDtoCopyWithImpl(this._self, this._then);

  final _UpdateDeliveryStatusDto _self;
  final $Res Function(_UpdateDeliveryStatusDto) _then;

  /// Create a copy of UpdateDeliveryStatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? deliveryStatus = null,
    Object? deliveryId = freezed,
    Object? employeeCancelNote = freezed,
  }) {
    return _then(_UpdateDeliveryStatusDto(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _self.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveryId: freezed == deliveryId
          ? _self.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeCancelNote: freezed == employeeCancelNote
          ? _self.employeeCancelNote
          : employeeCancelNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
