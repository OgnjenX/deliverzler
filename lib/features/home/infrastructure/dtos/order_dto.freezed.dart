// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDto {
  int get deliveryDateTime;
  PickupOption get pickupOption;
  String get paymentMethod;
  @JsonKey(name: 'buyerAddress')
  AddressDto? get buyerAddress;
  @JsonKey(name: 'sellerAddress')
  AddressDto? get sellerAddress;
  String get userId;
  String get userName;
  String get userImage;
  String get userPhone;
  String get userNote;
  String? get employeeCancelNote;
  DeliveryStatus get deliveryStatus;
  String? get deliveryId;
  @GeoPointConverter()
  GeoPoint? get deliveryGeoPoint;
  bool get isAsap;
  @JsonKey(includeToJson: false)
  String? get id;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      _$OrderDtoCopyWithImpl<OrderDto>(this as OrderDto, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderDto &&
            (identical(other.deliveryDateTime, deliveryDateTime) ||
                other.deliveryDateTime == deliveryDateTime) &&
            (identical(other.pickupOption, pickupOption) ||
                other.pickupOption == pickupOption) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.buyerAddress, buyerAddress) ||
                other.buyerAddress == buyerAddress) &&
            (identical(other.sellerAddress, sellerAddress) ||
                other.sellerAddress == sellerAddress) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userNote, userNote) ||
                other.userNote == userNote) &&
            (identical(other.employeeCancelNote, employeeCancelNote) ||
                other.employeeCancelNote == employeeCancelNote) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.deliveryGeoPoint, deliveryGeoPoint) ||
                other.deliveryGeoPoint == deliveryGeoPoint) &&
            (identical(other.isAsap, isAsap) || other.isAsap == isAsap) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deliveryDateTime,
      pickupOption,
      paymentMethod,
      buyerAddress,
      sellerAddress,
      userId,
      userName,
      userImage,
      userPhone,
      userNote,
      employeeCancelNote,
      deliveryStatus,
      deliveryId,
      deliveryGeoPoint,
      isAsap,
      id);

  @override
  String toString() {
    return 'OrderDto(deliveryDateTime: $deliveryDateTime, pickupOption: $pickupOption, paymentMethod: $paymentMethod, buyerAddress: $buyerAddress, sellerAddress: $sellerAddress, userId: $userId, userName: $userName, userImage: $userImage, userPhone: $userPhone, userNote: $userNote, employeeCancelNote: $employeeCancelNote, deliveryStatus: $deliveryStatus, deliveryId: $deliveryId, deliveryGeoPoint: $deliveryGeoPoint, isAsap: $isAsap, id: $id)';
  }
}

/// @nodoc
abstract mixin class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) _then) =
      _$OrderDtoCopyWithImpl;
  @useResult
  $Res call(
      {int deliveryDateTime,
      PickupOption pickupOption,
      String paymentMethod,
      @JsonKey(name: 'buyerAddress') AddressDto? buyerAddress,
      @JsonKey(name: 'sellerAddress') AddressDto? sellerAddress,
      String userId,
      String userName,
      String userImage,
      String userPhone,
      String userNote,
      String? employeeCancelNote,
      DeliveryStatus deliveryStatus,
      String? deliveryId,
      @GeoPointConverter() GeoPoint? deliveryGeoPoint,
      bool isAsap,
      @JsonKey(includeToJson: false) String? id});

  $AddressDtoCopyWith<$Res>? get buyerAddress;
  $AddressDtoCopyWith<$Res>? get sellerAddress;
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res> implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._self, this._then);

  final OrderDto _self;
  final $Res Function(OrderDto) _then;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryDateTime = null,
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
    Object? isAsap = null,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      deliveryDateTime: null == deliveryDateTime
          ? _self.deliveryDateTime
          : deliveryDateTime // ignore: cast_nullable_to_non_nullable
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
              as AddressDto?,
      sellerAddress: freezed == sellerAddress
          ? _self.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
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
      isAsap: null == isAsap
          ? _self.isAsap
          : isAsap // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get buyerAddress {
    if (_self.buyerAddress == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_self.buyerAddress!, (value) {
      return _then(_self.copyWith(buyerAddress: value));
    });
  }

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get sellerAddress {
    if (_self.sellerAddress == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_self.sellerAddress!, (value) {
      return _then(_self.copyWith(sellerAddress: value));
    });
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _OrderDto extends OrderDto {
  const _OrderDto(
      {required this.deliveryDateTime,
      required this.pickupOption,
      required this.paymentMethod,
      @JsonKey(name: 'buyerAddress') required this.buyerAddress,
      @JsonKey(name: 'sellerAddress') required this.sellerAddress,
      required this.userId,
      required this.userName,
      required this.userImage,
      required this.userPhone,
      required this.userNote,
      required this.employeeCancelNote,
      required this.deliveryStatus,
      required this.deliveryId,
      @GeoPointConverter() required this.deliveryGeoPoint,
      this.isAsap = false,
      @JsonKey(includeToJson: false) this.id})
      : super._();
  factory _OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  @override
  final int deliveryDateTime;
  @override
  final PickupOption pickupOption;
  @override
  final String paymentMethod;
  @override
  @JsonKey(name: 'buyerAddress')
  final AddressDto? buyerAddress;
  @override
  @JsonKey(name: 'sellerAddress')
  final AddressDto? sellerAddress;
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
  @GeoPointConverter()
  final GeoPoint? deliveryGeoPoint;
  @override
  @JsonKey()
  final bool isAsap;
  @override
  @JsonKey(includeToJson: false)
  final String? id;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderDtoCopyWith<_OrderDto> get copyWith =>
      __$OrderDtoCopyWithImpl<_OrderDto>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderDto &&
            (identical(other.deliveryDateTime, deliveryDateTime) ||
                other.deliveryDateTime == deliveryDateTime) &&
            (identical(other.pickupOption, pickupOption) ||
                other.pickupOption == pickupOption) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.buyerAddress, buyerAddress) ||
                other.buyerAddress == buyerAddress) &&
            (identical(other.sellerAddress, sellerAddress) ||
                other.sellerAddress == sellerAddress) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userNote, userNote) ||
                other.userNote == userNote) &&
            (identical(other.employeeCancelNote, employeeCancelNote) ||
                other.employeeCancelNote == employeeCancelNote) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.deliveryGeoPoint, deliveryGeoPoint) ||
                other.deliveryGeoPoint == deliveryGeoPoint) &&
            (identical(other.isAsap, isAsap) || other.isAsap == isAsap) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deliveryDateTime,
      pickupOption,
      paymentMethod,
      buyerAddress,
      sellerAddress,
      userId,
      userName,
      userImage,
      userPhone,
      userNote,
      employeeCancelNote,
      deliveryStatus,
      deliveryId,
      deliveryGeoPoint,
      isAsap,
      id);

  @override
  String toString() {
    return 'OrderDto(deliveryDateTime: $deliveryDateTime, pickupOption: $pickupOption, paymentMethod: $paymentMethod, buyerAddress: $buyerAddress, sellerAddress: $sellerAddress, userId: $userId, userName: $userName, userImage: $userImage, userPhone: $userPhone, userNote: $userNote, employeeCancelNote: $employeeCancelNote, deliveryStatus: $deliveryStatus, deliveryId: $deliveryId, deliveryGeoPoint: $deliveryGeoPoint, isAsap: $isAsap, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$OrderDtoCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$OrderDtoCopyWith(_OrderDto value, $Res Function(_OrderDto) _then) =
      __$OrderDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int deliveryDateTime,
      PickupOption pickupOption,
      String paymentMethod,
      @JsonKey(name: 'buyerAddress') AddressDto? buyerAddress,
      @JsonKey(name: 'sellerAddress') AddressDto? sellerAddress,
      String userId,
      String userName,
      String userImage,
      String userPhone,
      String userNote,
      String? employeeCancelNote,
      DeliveryStatus deliveryStatus,
      String? deliveryId,
      @GeoPointConverter() GeoPoint? deliveryGeoPoint,
      bool isAsap,
      @JsonKey(includeToJson: false) String? id});

  @override
  $AddressDtoCopyWith<$Res>? get buyerAddress;
  @override
  $AddressDtoCopyWith<$Res>? get sellerAddress;
}

/// @nodoc
class __$OrderDtoCopyWithImpl<$Res> implements _$OrderDtoCopyWith<$Res> {
  __$OrderDtoCopyWithImpl(this._self, this._then);

  final _OrderDto _self;
  final $Res Function(_OrderDto) _then;

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deliveryDateTime = null,
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
    Object? isAsap = null,
    Object? id = freezed,
  }) {
    return _then(_OrderDto(
      deliveryDateTime: null == deliveryDateTime
          ? _self.deliveryDateTime
          : deliveryDateTime // ignore: cast_nullable_to_non_nullable
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
              as AddressDto?,
      sellerAddress: freezed == sellerAddress
          ? _self.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
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
      isAsap: null == isAsap
          ? _self.isAsap
          : isAsap // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get buyerAddress {
    if (_self.buyerAddress == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_self.buyerAddress!, (value) {
      return _then(_self.copyWith(buyerAddress: value));
    });
  }

  /// Create a copy of OrderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get sellerAddress {
    if (_self.sellerAddress == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_self.sellerAddress!, (value) {
      return _then(_self.copyWith(sellerAddress: value));
    });
  }
}

/// @nodoc
mixin _$AddressDto {
  String get state;
  String get city;
  String get street;
  String get mobile;
  @GeoPointConverter()
  GeoPoint? get geoPoint;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      _$AddressDtoCopyWithImpl<AddressDto>(this as AddressDto, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressDto &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, state, city, street, mobile, geoPoint);

  @override
  String toString() {
    return 'AddressDto(state: $state, city: $city, street: $street, mobile: $mobile, geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) _then) =
      _$AddressDtoCopyWithImpl;
  @useResult
  $Res call(
      {String state,
      String city,
      String street,
      String mobile,
      @GeoPointConverter() GeoPoint? geoPoint});
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res> implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._self, this._then);

  final AddressDto _self;
  final $Res Function(AddressDto) _then;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? city = null,
    Object? street = null,
    Object? mobile = null,
    Object? geoPoint = freezed,
  }) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _self.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      geoPoint: freezed == geoPoint
          ? _self.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _AddressDto extends AddressDto {
  const _AddressDto(
      {required this.state,
      required this.city,
      required this.street,
      required this.mobile,
      @GeoPointConverter() required this.geoPoint})
      : super._();
  factory _AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);

  @override
  final String state;
  @override
  final String city;
  @override
  final String street;
  @override
  final String mobile;
  @override
  @GeoPointConverter()
  final GeoPoint? geoPoint;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressDtoCopyWith<_AddressDto> get copyWith =>
      __$AddressDtoCopyWithImpl<_AddressDto>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressDto &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, state, city, street, mobile, geoPoint);

  @override
  String toString() {
    return 'AddressDto(state: $state, city: $city, street: $street, mobile: $mobile, geoPoint: $geoPoint)';
  }
}

/// @nodoc
abstract mixin class _$AddressDtoCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$AddressDtoCopyWith(
          _AddressDto value, $Res Function(_AddressDto) _then) =
      __$AddressDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String state,
      String city,
      String street,
      String mobile,
      @GeoPointConverter() GeoPoint? geoPoint});
}

/// @nodoc
class __$AddressDtoCopyWithImpl<$Res> implements _$AddressDtoCopyWith<$Res> {
  __$AddressDtoCopyWithImpl(this._self, this._then);

  final _AddressDto _self;
  final $Res Function(_AddressDto) _then;

  /// Create a copy of AddressDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? city = null,
    Object? street = null,
    Object? mobile = null,
    Object? geoPoint = freezed,
  }) {
    return _then(_AddressDto(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _self.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      geoPoint: freezed == geoPoint
          ? _self.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
    ));
  }
}

// dart format on
