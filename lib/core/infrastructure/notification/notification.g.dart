// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) =>
    _NotificationPayload(
      routeLocation: json['routeLocation'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NotificationPayloadToJson(
        _NotificationPayload instance) =>
    <String, dynamic>{
      'routeLocation': instance.routeLocation,
      'data': instance.data,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tappedNotificationHash() =>
    r'36a0081cfd5467adb94f3794bef84b622447b145';

/// See also [tappedNotification].
@ProviderFor(tappedNotification)
final tappedNotificationProvider =
    AutoDisposeProvider<Option<NotificationPayload>>.internal(
  tappedNotification,
  name: r'tappedNotificationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tappedNotificationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TappedNotificationRef
    = AutoDisposeProviderRef<Option<NotificationPayload>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
