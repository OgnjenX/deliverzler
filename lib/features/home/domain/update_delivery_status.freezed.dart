// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_delivery_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDeliveryStatus {
  String get orderId;
  DeliveryStatus get deliveryStatus;
  String? get deliveryId;
  String? get employeeCancelNote;

  /// Create a copy of UpdateDeliveryStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateDeliveryStatusCopyWith<UpdateDeliveryStatus> get copyWith =>
      _$UpdateDeliveryStatusCopyWithImpl<UpdateDeliveryStatus>(
          this as UpdateDeliveryStatus, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateDeliveryStatus &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.employeeCancelNote, employeeCancelNote) ||
                other.employeeCancelNote == employeeCancelNote));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, deliveryStatus, deliveryId, employeeCancelNote);

  @override
  String toString() {
    return 'UpdateDeliveryStatus(orderId: $orderId, deliveryStatus: $deliveryStatus, deliveryId: $deliveryId, employeeCancelNote: $employeeCancelNote)';
  }
}

/// @nodoc
abstract mixin class $UpdateDeliveryStatusCopyWith<$Res> {
  factory $UpdateDeliveryStatusCopyWith(UpdateDeliveryStatus value,
          $Res Function(UpdateDeliveryStatus) _then) =
      _$UpdateDeliveryStatusCopyWithImpl;
  @useResult
  $Res call(
      {String orderId,
      DeliveryStatus deliveryStatus,
      String? deliveryId,
      String? employeeCancelNote});
}

/// @nodoc
class _$UpdateDeliveryStatusCopyWithImpl<$Res>
    implements $UpdateDeliveryStatusCopyWith<$Res> {
  _$UpdateDeliveryStatusCopyWithImpl(this._self, this._then);

  final UpdateDeliveryStatus _self;
  final $Res Function(UpdateDeliveryStatus) _then;

  /// Create a copy of UpdateDeliveryStatus
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

class _UpdateDeliveryStatus implements UpdateDeliveryStatus {
  const _UpdateDeliveryStatus(
      {required this.orderId,
      required this.deliveryStatus,
      this.deliveryId,
      this.employeeCancelNote});

  @override
  final String orderId;
  @override
  final DeliveryStatus deliveryStatus;
  @override
  final String? deliveryId;
  @override
  final String? employeeCancelNote;

  /// Create a copy of UpdateDeliveryStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateDeliveryStatusCopyWith<_UpdateDeliveryStatus> get copyWith =>
      __$UpdateDeliveryStatusCopyWithImpl<_UpdateDeliveryStatus>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateDeliveryStatus &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.employeeCancelNote, employeeCancelNote) ||
                other.employeeCancelNote == employeeCancelNote));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, deliveryStatus, deliveryId, employeeCancelNote);

  @override
  String toString() {
    return 'UpdateDeliveryStatus(orderId: $orderId, deliveryStatus: $deliveryStatus, deliveryId: $deliveryId, employeeCancelNote: $employeeCancelNote)';
  }
}

/// @nodoc
abstract mixin class _$UpdateDeliveryStatusCopyWith<$Res>
    implements $UpdateDeliveryStatusCopyWith<$Res> {
  factory _$UpdateDeliveryStatusCopyWith(_UpdateDeliveryStatus value,
          $Res Function(_UpdateDeliveryStatus) _then) =
      __$UpdateDeliveryStatusCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String orderId,
      DeliveryStatus deliveryStatus,
      String? deliveryId,
      String? employeeCancelNote});
}

/// @nodoc
class __$UpdateDeliveryStatusCopyWithImpl<$Res>
    implements _$UpdateDeliveryStatusCopyWith<$Res> {
  __$UpdateDeliveryStatusCopyWithImpl(this._self, this._then);

  final _UpdateDeliveryStatus _self;
  final $Res Function(_UpdateDeliveryStatus) _then;

  /// Create a copy of UpdateDeliveryStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? deliveryStatus = null,
    Object? deliveryId = freezed,
    Object? employeeCancelNote = freezed,
  }) {
    return _then(_UpdateDeliveryStatus(
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
