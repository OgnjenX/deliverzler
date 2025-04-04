import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/presentation/utils/fp_framework.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import 'fcm_remote_message_providers.dart';
import 'notification_service.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
abstract class NotificationPayload with _$NotificationPayload {
  const factory NotificationPayload({
    required String? routeLocation,
    required Map<String, dynamic>? data,
  }) = _NotificationPayload;

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}

// Create a StateNotifier to manage the notification state
class NotificationStateNotifier
    extends StateNotifier<Option<NotificationPayload>> {
  NotificationStateNotifier() : super(const None());

  void updateState(NotificationPayload ntf) {
    state = Some(ntf);
  }
}

// Generate the StateNotifierProvider for NotificationStateNotifier
final notificationStateNotifierProvider = StateNotifierProvider<
    NotificationStateNotifier, Option<NotificationPayload>>(
  (ref) => NotificationStateNotifier(),
);

// This helper function handles the logic of updating the notification state.
void _updateNotificationState(Ref ref, NotificationPayload ntf) {
  ref.read(notificationStateNotifierProvider.notifier).updateState(ntf);
}

@riverpod
Option<NotificationPayload> tappedNotification(Ref ref) {
  // Listen for the notifications and update state
  ref.listen(getInitialMessageProvider, (previous, next) {
    next.whenData((message) {
      if (message is Some<RemoteMessage> && message.value.data.isNotEmpty) {
        final ntf = NotificationPayload.fromJson(message.value.data);
        _updateNotificationState(ref, ntf); // Call the helper function here
      }
    });
  });

  ref.listen(onMessageOpenedAppProvider, (previous, next) {
    next.whenData(
      (message) {
        if (message.data.isNotEmpty) {
          final ntf = NotificationPayload.fromJson(message.data);
          _updateNotificationState(ref, ntf); // Call the helper function here
        }
      },
    );
  });

  ref.listen(notificationResponseEventProvider, (previous, next) {
    if (next is Some<NotificationResponse>) {
      final payload = next.value.payload;
      if (payload == null || payload.isEmpty) return;

      final decodedPayload = jsonDecode(payload) as Map<String, dynamic>;
      final ntf = NotificationPayload.fromJson(decodedPayload);
      _updateNotificationState(ref, ntf); // Call the helper function here
    }
  });

  return const None();
}
