import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_objects.freezed.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
    required String state,
    required String city,
    required String street,
    required String mobile,
    required GeoPoint? geoPoint,
  }) = _Address;
}

@JsonEnum(valueField: 'jsonValue')
enum PickupOption {
  delivery('delivery'),
  pickUp('pickUp'),
  diningRoom('diningRoom');

  const PickupOption(this.jsonValue);

  final String jsonValue;
}

@JsonEnum(valueField: 'jsonValue')
enum DeliveryStatus {
  pending('pending'),
  upcoming('upcoming'),
  onTheWay('onTheWay'),
  delivered('delivered'),
  canceled('canceled');

  const DeliveryStatus(this.jsonValue);

  final String jsonValue;
}

@JsonEnum(valueField: 'jsonValue')
enum DelivererStatus {
  available('available'), // Deliverer is free and can take new orders
  onDelivery('onDelivery'), // Deliverer is currently on a delivery
  offline('offline'); // Deliverer is not working (outside work hours)

  const DelivererStatus(this.jsonValue);

  final String jsonValue;
}
