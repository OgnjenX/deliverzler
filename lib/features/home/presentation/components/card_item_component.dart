import 'package:flutter/material.dart';

import '../../../../auth/presentation/providers/auth_state_provider.dart';
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

    ({bool canProceed, bool isLoading}) fetchOrderAuthority() {
      return ref.read(ordersServiceProvider).orderAuthority(
            userId: userId,
            orderDeliveryId: order.deliveryId,
          );
    }

    void showMap() {
      final authority = fetchOrderAuthority();

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

    Future<void> confirmOrder() async {
      final authority = fetchOrderAuthority();

      switch (authority) {
        case (canProceed: true, isLoading: false):
          return OrderDialogs.confirmChoiceDialog(
            context,
            S.of(context).doYouWantToConfirmTheOrder,
          ).then(
            (confirmChoice) {
              if (confirmChoice) {
                // 1. First update order status to delivered
                final params = UpdateDeliveryStatus(
                  orderId: order.id,
                  deliveryStatus: DeliveryStatus.delivered,
                );
                ref
                    .read(updateDeliveryStatusControllerProvider.notifier)
                    .updateStatus(params);
                    
                // 2. Then use the OrderDeliveryNotifier to complete the delivery
                // This will update the deliverer's status to available
                ref.read(orderDeliveryNotifierProvider.notifier).completeDelivery(order);
              }
            },
          );
        case (canProceed: false, isLoading: false):
          OrderDialogs.showCanNotProceedDialog(context);
        case _:
          return;
      }
    }

    Future<void> deliverOrder() async {
      final authority = fetchOrderAuthority();

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
            await ref.read(orderDeliveryNotifierProvider.notifier).acceptOrder(order);
          }
        case _:
          return;
      }
    }

    Future<void> cancelOrder() async {
      final authority = fetchOrderAuthority();

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
                onPressed: showMap,
              ),
            const SizedBox(
              height: Sizes.marginV6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  // Allow the button to shrink if needed
                  child: CardButtonComponent(
                    title: S.of(context).cancel,
                    isColored: false,
                    onPressed: cancelOrder,
                  ),
                ),
                const SizedBox(width: 8), // Add spacing between buttons
                Expanded(
                  child: isUpcomingOrder
                      ? CardButtonComponent(
                          title: S.of(context).deliver,
                          isColored: true,
                          onPressed: deliverOrder,
                        )
                      : CardButtonComponent(
                          title: S.of(context).confirm,
                          isColored: true,
                          onPressed: confirmOrder,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
