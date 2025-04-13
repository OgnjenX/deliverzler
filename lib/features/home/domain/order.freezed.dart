// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppOrder {
  String get id;
  int get date;
  PickupOption get pickupOption;
  String get paymentMethod;
  Address? get buyerAddress;
  Address? get sellerAddress;
  String get userId;
  String get userName;
  String get userImage;
  String get userPhone;
  String get userNote;
  String? get employeeCancelNote;
  DeliveryStatus get deliveryStatus;
  String? get deliveryId;
  GeoPoint? get deliveryGeoPoint;

  /// Create a copy of AppOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppOrderCopyWith<AppOrder> get copyWith =>
      _$AppOrderCopyWithImpl<AppOrder>(this as AppOrder, _$identity);

  @override
  String toString() {
    return 'AppOrder(id: $id, date: $date, pickupOption: $pickupOption, paymentMethod: $paymentMethod, buyerAddress: $buyerAddress, sellerAddress: $sellerAddress, userId: $userId, userName: $userName, userImage: $userImage, userPhone: $userPhone, userNote: $userNote, employeeCancelNote: $employeeCancelNote, deliveryStatus: $deliveryStatus, deliveryId: $deliveryId, deliveryGeoPoint: $deliveryGeoPoint)';
  }
}

/// @nodoc
abstract mixin class $AppOrderCopyWith<$Res> {
  factory $AppOrderCopyWith(AppOrder value, $Res Function(AppOrder) _then) =
      _$AppOrderCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      int date,
      PickupOption pickupOption,
      String paymentMethod,
      Address? buyerAddress,
      Address? sellerAddress,
      String userId,
      String userName,
      String userImage,
      String userPhone,
      String userNote,
      String? employeeCancelNote,
      DeliveryStatus deliveryStatus,
      String? deliveryId,
      GeoPoint? deliveryGeoPoint});

  $AddressCopyWith<$Res>? get buyerAddress;
  $AddressCopyWith<$Res>? get sellerAddress;
}

/// @nodoc
class _$AppOrderCopyWithImpl<$Res> implements $AppOrderCopyWith<$Res> {
  _$AppOrderCopyWithImpl(this._self, this._then);

  final AppOrder _self;
  final $Res Function(AppOrder) _then;

  /// Create a copy of AppOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? pickupOption = null,
    Object? paymentMethod = null,
    Object? buyerAddress = freezed,
    Object? sellerAddress = freezed,
    Object? userId = null,
    Object? userName = null,
    Object? userImage = null,
    Object? userPhone = null,
    Object? userNote = null,
    Object? employeeCancelNote = freezed,
    Object? deliveryStatus = null,
    Object? deliveryId = freezed,
    Object? deliveryGeoPoint = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      pickupOption: null == pickupOption
          ? _self.pickupOption
          : pickupOption // ignore: cast_nullable_to_non_nullable
              as PickupOption,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      buyerAddress: freezed == buyerAddress
          ? _self.buyerAddress
          : buyerAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      sellerAddress: freezed == sellerAddress
          ? _self.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImage: null == userImage
          ? _self.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _self.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userNote: null == userNote
          ? _self.userNote
          : userNote // ignore: cast_nullable_to_non_nullable
              as String,
      employeeCancelNote: freezed == employeeCancelNote
          ? _self.employeeCancelNote
          : employeeCancelNote // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: null == deliveryStatus
          ? _self.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveryId: freezed == deliveryId
          ? _self.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryGeoPoint: freezed == deliveryGeoPoint
          ? _self.deliveryGeoPoint
          : deliveryGeoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
    ));
  }

  /// Create a copy of AppOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get buyerAddress {
    if (_self.buyerAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.buyerAddress!, (value) {
      return _then(_self.copyWith(buyerAddress: value));
    });
  }

  /// Create a copy of AppOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get sellerAddress {
    if (_self.sellerAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.sellerAddress!, (value) {
      return _then(_self.copyWith(sellerAddress: value));
    });
  }
}

/// @nodoc

class _AppOrder extends AppOrder {
  const _AppOrder(
      {required this.id,
      required this.date,
      required this.pickupOption,
      required this.paymentMethod,
      required this.buyerAddress,
      required this.sellerAddress,
      required this.userId,
      required this.userName,
      required this.userImage,
      required this.userPhone,
      required this.userNote,
      required this.employeeCancelNote,
      required this.deliveryStatus,
      required this.deliveryId,
      required this.deliveryGeoPoint})
      : super._();

  @override
  final String id;
  @override
  final int date;
  @override
  final PickupOption pickupOption;
  @override
  final String paymentMethod;
  @override
  final Address? buyerAddress;
  @override
  final Address? sellerAddress;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userImage;
  @override
  final String userPhone;
  @override
  final String userNote;
  @override
  final String? employeeCancelNote;
  @override
  final DeliveryStatus deliveryStatus;
  @override
  final String? deliveryId;
  @override
  final GeoPoint? deliveryGeoPoint;

  /// Create a copy of AppOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppOrderCopyWith<_AppOrder> get copyWith =>
      __$AppOrderCopyWithImpl<_AppOrder>(this, _$identity);

  @override
  String toString() {
    return 'AppOrder(id: $id, date: $date, pickupOption: $pickupOption, paymentMethod: $paymentMethod, buyerAddress: $buyerAddress, sellerAddress: $sellerAddress, userId: $userId, userName: $userName, userImage: $userImage, userPhone: $userPhone, userNote: $userNote, employeeCancelNote: $employeeCancelNote, deliveryStatus: $deliveryStatus, deliveryId: $deliveryId, deliveryGeoPoint: $deliveryGeoPoint)';
  }
}

/// @nodoc
abstract mixin class _$AppOrderCopyWith<$Res>
    implements $AppOrderCopyWith<$Res> {
  factory _$AppOrderCopyWith(_AppOrder value, $Res Function(_AppOrder) _then) =
      __$AppOrderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      int date,
      PickupOption pickupOption,
      String paymentMethod,
      Address? buyerAddress,
      Address? sellerAddress,
      String userId,
      String userName,
      String userImage,
      String userPhone,
      String userNote,
      String? employeeCancelNote,
      DeliveryStatus deliveryStatus,
      String? deliveryId,
      GeoPoint? deliveryGeoPoint});

  @override
  $AddressCopyWith<$Res>? get buyerAddress;
  @override
  $AddressCopyWith<$Res>? get sellerAddress;
}

/// @nodoc
class __$AppOrderCopyWithImpl<$Res> implements _$AppOrderCopyWith<$Res> {
  __$AppOrderCopyWithImpl(this._self, this._then);

  final _AppOrder _self;
  final $Res Function(_AppOrder) _then;

  /// Create a copy of AppOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? pickupOption = null,
    Object? paymentMethod = null,
    Object? buyerAddress = freezed,
    Object? sellerAddress = freezed,
    Object? userId = null,
    Object? userName = null,
    Object? userImage = null,
    Object? userPhone = null,
    Object? userNote = null,
    Object? employeeCancelNote = freezed,
    Object? deliveryStatus = null,
    Object? deliveryId = freezed,
    Object? deliveryGeoPoint = freezed,
  }) {
    return _then(_AppOrder(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      pickupOption: null == pickupOption
          ? _self.pickupOption
          : pickupOption // ignore: cast_nullable_to_non_nullable
              as PickupOption,
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      buyerAddress: freezed == buyerAddress
          ? _self.buyerAddress
          : buyerAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      sellerAddress: freezed == sellerAddress
          ? _self.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImage: null == userImage
          ? _self.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _self.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userNote: null == userNote
          ? _self.userNote
          : userNote // ignore: cast_nullable_to_non_nullable
              as String,
      employeeCancelNote: freezed == employeeCancelNote
          ? _self.employeeCancelNote
          : employeeCancelNote // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: null == deliveryStatus
          ? _self.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveryId: freezed == deliveryId
          ? _self.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryGeoPoint: freezed == deliveryGeoPoint
          ? _self.deliveryGeoPoint
          : deliveryGeoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
    ));
  }

  /// Create a copy of AppOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get buyerAddress {
    if (_self.buyerAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.buyerAddress!, (value) {
      return _then(_self.copyWith(buyerAddress: value));
    });
  }

  /// Create a copy of AppOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get sellerAddress {
    if (_self.sellerAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.sellerAddress!, (value) {
      return _then(_self.copyWith(sellerAddress: value));
    });
  }
}

// dart format on
