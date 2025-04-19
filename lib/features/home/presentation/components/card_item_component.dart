import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../auth/presentation/providers/auth_state_provider.dart';
import '../../../../constants.dart';
import '../../../../core/infrastructure/services/location_service.dart';
import '../../../../core/presentation/routing/app_router.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/fp_framework.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../generated/l10n.dart';
import '../../domain/order.dart';
import '../../domain/orders_service.dart';
import '../../domain/update_delivery_status.dart';
import '../../domain/value_objects.dart';
import '../providers/order_delivery_provider.dart';
import '../providers/selected_order_provider.dart';
import '../providers/update_delivery_status_provider/update_delivery_status_provider.dart';
import '../widgets/order_dialogs.dart';
import 'card_button_component.dart';
import 'card_details_button_component.dart';
import 'card_order_details_component.dart';
import 'card_user_details_component.dart';

class CardItemComponent extends ConsumerWidget {
  const CardItemComponent({
    required this.order,
    super.key,
  });

  final AppOrder order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(currentUserProvider.select((user) => user.id));
    final isUpcomingOrder = order.deliveryStatus == DeliveryStatus.upcoming;

    // Use a FutureBuilder to determine if the order is ready for delivery
    return FutureBuilder<bool>(
      // This future will determine if the order is ready for delivery based on time window
      future: _checkIfOrderIsReadyForDelivery(ref),
      // Default to false while loading
      initialData: false,
      builder: (context, snapshot) {
        // Get the result of the future (is the order ready for delivery?)
        final isReadyForDelivery = snapshot.data ?? false;

        return Card(
          elevation: 6,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.cardR12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.cardPaddingV16,
              horizontal: Sizes.cardPaddingH20,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CardOrderDetailsComponent(
                        order: order,
                      ),
                    ),
                    CardDetailsButtonComponent(
                      title: S.of(context).details,
                      onPressed: () {
                        OrderDialogs.showOrderDetailsDialog(
                          context,
                          order: order,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.marginV8,
                ),
                CardUserDetailsComponent(
                  order: order,
                ),
                const SizedBox(
                  height: Sizes.marginV8,
                ),
                if (!isUpcomingOrder)
                  CardButtonComponent(
                    title: S.of(context).showMap,
                    isColored: true,
                    onPressed: () => showMap(context, ref, userId),
                  ),
                const SizedBox(
                  height: Sizes.marginV6,
                ),
                // Conditionally render different button layouts based on order status and delivery time
                if (isUpcomingOrder)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CardButtonComponent(
                          title: S.of(context).cancel,
                          isColored: false,
                          onPressed: () => cancelOrder(context, ref, userId),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: CardButtonComponent(
                          title: S.of(context).deliver,
                          isColored: true,
                          // Always enable the button, but handle the timing logic in the onPressed callback
                          onPressed: () {
                            if (isReadyForDelivery ||
                                !AppConstants.enforceDeliveryTimeRestrictions) {
                              deliverOrder(context, ref, userId);
                            } else {
                              // Show a snackbar explaining why delivery can't be started now
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text(S.of(context).deliveryNotReadyYet),
                                  backgroundColor: Colors.orange,
                                  duration: const Duration(seconds: 3),
                                ),
                              );
                            }
                          },
                          // Apply gray styling when not ready for delivery and time restrictions are enforced
                          buttonColor: isReadyForDelivery ||
                                  !AppConstants.enforceDeliveryTimeRestrictions
                              ? null
                              : Colors.grey,
                        ),
                      ),
                    ],
                  )
                else
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.5, // Half screen width for better appearance
                      child: CardButtonComponent(
                        title: S.of(context).cancel,
                        isColored: false,
                        onPressed: () => cancelOrder(context, ref, userId),
                      ),
                    ),
                  ),
                // Add bottom spacing for more elegant appearance
                const SizedBox(
                  height: Sizes.marginV12,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Helper method to check if an order is ready for delivery
  Future<bool> _checkIfOrderIsReadyForDelivery(WidgetRef ref) async {
    try {
      // Try to get the current location
      LatLng? currentLocation;

      try {
        // Get the latest position from the location stream
        final position = await ref.read(locationServiceProvider).getLocation();
        if (position != null) {
          currentLocation = LatLng(position.latitude, position.longitude);
        }
      } catch (e) {
        if (kDebugMode) {
          print('Error getting current location: $e');
        }
      }

      // Check if the order is ready for delivery
      return ref.read(ordersServiceProvider).isReadyForDelivery(
            order,
            delivererLocation: currentLocation,
          );
    } catch (e) {
      if (kDebugMode) {
        print('Error checking if order is ready for delivery: $e');
      }
      return false;
    }
  }

  void showMap(BuildContext context, WidgetRef ref, String userId) {
    final authority = fetchOrderAuthority(ref, userId);

    switch (authority) {
      case (canProceed: true, isLoading: false):
        ref
            .read(selectedOrderIdProvider.notifier)
            .update((_) => Some(order.id));
        const MapRoute().go(context);
      case (canProceed: false, isLoading: false):
        OrderDialogs.showCanNotProceedDialog(context);
      case _:
        return;
    }
  }

  Future<void> deliverOrder(
    BuildContext context,
    WidgetRef ref,
    String userId,
  ) async {
    final authority = fetchOrderAuthority(ref, userId);

    switch (authority) {
      case (canProceed: _, isLoading: false):
        final confirmChoice = await OrderDialogs.confirmChoiceDialog(
          context,
          S.of(context).doYouWantToDeliverTheOrder,
        );
        if (confirmChoice) {
          // 1. First update order status to onTheWay
          final params = UpdateDeliveryStatus(
            orderId: order.id,
            deliveryStatus: DeliveryStatus.onTheWay,
            deliveryId: userId,
          );
          await ref
              .read(updateDeliveryStatusControllerProvider.notifier)
              .updateStatus(params);

          // 2. Then use the OrderDeliveryNotifier to handle delivery logistics
          // This will calculate estimated delivery time and update the deliverer's status
          await ref
              .read(orderDeliveryNotifierProvider.notifier)
              .acceptOrder(order);
        }
      case _:
        return;
    }
  }

  Future<void> cancelOrder(
    BuildContext context,
    WidgetRef ref,
    String userId,
  ) async {
    final authority = fetchOrderAuthority(ref, userId);

    switch (authority) {
      case (canProceed: true, isLoading: false):
        return OrderDialogs.showCancelOrderDialog(context).then(
          (cancelNote) {
            if (cancelNote != null) {
              final params = UpdateDeliveryStatus(
                orderId: order.id,
                deliveryStatus: DeliveryStatus.canceled,
                employeeCancelNote: cancelNote,
              );
              ref
                  .read(updateDeliveryStatusControllerProvider.notifier)
                  .updateStatus(params);
            }
          },
        );
      case (canProceed: false, isLoading: false):
        OrderDialogs.showCanNotProceedDialog(context);
      case _:
        return;
    }
  }

  ({bool canProceed, bool isLoading}) fetchOrderAuthority(
    WidgetRef ref,
    String userId,
  ) {
    return ref.read(ordersServiceProvider).orderAuthority(
          userId: userId,
          orderDeliveryId: order.deliveryId,
        );
  }
}
