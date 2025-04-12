// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileDetails {
  String get name;
  String get phone;
  DelivererStatus get delivererStatus;
  DateTime? get estimatedDeliveryCompletionTime;

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileDetailsCopyWith<ProfileDetails> get copyWith =>
      _$ProfileDetailsCopyWithImpl<ProfileDetails>(
          this as ProfileDetails, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.delivererStatus, delivererStatus) ||
                other.delivererStatus == delivererStatus) &&
            (identical(other.estimatedDeliveryCompletionTime,
                    estimatedDeliveryCompletionTime) ||
                other.estimatedDeliveryCompletionTime ==
                    estimatedDeliveryCompletionTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phone, delivererStatus,
      estimatedDeliveryCompletionTime);

  @override
  String toString() {
    return 'ProfileDetails(name: $name, phone: $phone, delivererStatus: $delivererStatus, estimatedDeliveryCompletionTime: $estimatedDeliveryCompletionTime)';
  }
}

/// @nodoc
abstract mixin class $ProfileDetailsCopyWith<$Res> {
  factory $ProfileDetailsCopyWith(
          ProfileDetails value, $Res Function(ProfileDetails) _then) =
      _$ProfileDetailsCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String phone,
      DelivererStatus delivererStatus,
      DateTime? estimatedDeliveryCompletionTime});
}

/// @nodoc
class _$ProfileDetailsCopyWithImpl<$Res>
    implements $ProfileDetailsCopyWith<$Res> {
  _$ProfileDetailsCopyWithImpl(this._self, this._then);

  final ProfileDetails _self;
  final $Res Function(ProfileDetails) _then;

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? delivererStatus = null,
    Object? estimatedDeliveryCompletionTime = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      delivererStatus: null == delivererStatus
          ? _self.delivererStatus
          : delivererStatus // ignore: cast_nullable_to_non_nullable
              as DelivererStatus,
      estimatedDeliveryCompletionTime: freezed ==
              estimatedDeliveryCompletionTime
          ? _self.estimatedDeliveryCompletionTime
          : estimatedDeliveryCompletionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _UpdateProfileParams implements ProfileDetails {
  const _UpdateProfileParams(
      {required this.name,
      required this.phone,
      this.delivererStatus = DelivererStatus.available,
      this.estimatedDeliveryCompletionTime});

  @override
  final String name;
  @override
  final String phone;
  @override
  @JsonKey()
  final DelivererStatus delivererStatus;
  @override
  final DateTime? estimatedDeliveryCompletionTime;

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateProfileParamsCopyWith<_UpdateProfileParams> get copyWith =>
      __$UpdateProfileParamsCopyWithImpl<_UpdateProfileParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProfileParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.delivererStatus, delivererStatus) ||
                other.delivererStatus == delivererStatus) &&
            (identical(other.estimatedDeliveryCompletionTime,
                    estimatedDeliveryCompletionTime) ||
                other.estimatedDeliveryCompletionTime ==
                    estimatedDeliveryCompletionTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phone, delivererStatus,
      estimatedDeliveryCompletionTime);

  @override
  String toString() {
    return 'ProfileDetails(name: $name, phone: $phone, delivererStatus: $delivererStatus, estimatedDeliveryCompletionTime: $estimatedDeliveryCompletionTime)';
  }
}

/// @nodoc
abstract mixin class _$UpdateProfileParamsCopyWith<$Res>
    implements $ProfileDetailsCopyWith<$Res> {
  factory _$UpdateProfileParamsCopyWith(_UpdateProfileParams value,
          $Res Function(_UpdateProfileParams) _then) =
      __$UpdateProfileParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String phone,
      DelivererStatus delivererStatus,
      DateTime? estimatedDeliveryCompletionTime});
}

/// @nodoc
class __$UpdateProfileParamsCopyWithImpl<$Res>
    implements _$UpdateProfileParamsCopyWith<$Res> {
  __$UpdateProfileParamsCopyWithImpl(this._self, this._then);

  final _UpdateProfileParams _self;
  final $Res Function(_UpdateProfileParams) _then;

  /// Create a copy of ProfileDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? delivererStatus = null,
    Object? estimatedDeliveryCompletionTime = freezed,
  }) {
    return _then(_UpdateProfileParams(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      delivererStatus: null == delivererStatus
          ? _self.delivererStatus
          : delivererStatus // ignore: cast_nullable_to_non_nullable
              as DelivererStatus,
      estimatedDeliveryCompletionTime: freezed ==
              estimatedDeliveryCompletionTime
          ? _self.estimatedDeliveryCompletionTime
          : estimatedDeliveryCompletionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
