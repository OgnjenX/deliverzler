// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_delivery_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$UpdateDeliveryStatusDtoToJson(
        _UpdateDeliveryStatusDto instance) =>
    <String, dynamic>{
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
      if (instance.deliveryId case final value?) 'deliveryId': value,
      if (instance.employeeCancelNote case final value?)
        'employeeCancelNote': value,
    };

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.pending: 'pending',
  DeliveryStatus.upcoming: 'upcoming',
  DeliveryStatus.onTheWay: 'onTheWay',
  DeliveryStatus.delivered: 'delivered',
  DeliveryStatus.canceled: 'canceled',
};
