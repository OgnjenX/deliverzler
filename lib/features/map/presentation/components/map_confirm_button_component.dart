import 'package:flutter/material.dart';

import '../../../../auth/presentation/providers/auth_state_provider.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../core/presentation/widgets/custom_elevated_button.dart';
import '../../../../generated/l10n.dart';
import '../../../home/domain/orders_service.dart';
import '../../../home/domain/update_delivery_status.dart';
import '../../../home/domain/value_objects.dart';
import '../../../home/presentation/providers/delivery_stage_provider.dart';
import '../../../home/presentation/providers/selected_order_provider.dart';
import '../../../home/presentation/widgets/order_dialogs.dart';
import '../providers/is_arrived_target_location_provider.dart';
import '../providers/map_confirm_order_provider.dart';

class MapConfirmButtonComponent extends ConsumerWidget {
  const MapConfirmButtonComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final arrivedTargetLocation = ref.watch(isArrivedTargetLocationProvider);
    final currentDeliveryStage = ref.watch(deliveryStageStateProvider);

    // Only show the button if user has arrived at the target location
    if (!arrivedTargetLocation) {
      return const SizedBox();
    }

    // Determine button text and action based on current delivery stage
    String buttonText;
    VoidCallback onPressed;

    switch (currentDeliveryStage) {
      case DeliveryStage.atSeller:
        buttonText = S.of(context).pickUp;
        onPressed = () => _confirmStageTransition(
              context, 
              ref, 
              S.of(context).doYouWantToConfirmPickup,
            );
      case DeliveryStage.pickedUp:
        buttonText = S.of(context).arrivedAtBuyer;
        onPressed = () => _confirmStageTransition(
              context, 
              ref, 
              S.of(context).doYouWantToConfirmArrivalAtBuyer,
            );
      case DeliveryStage.atBuyer:
        buttonText = S.of(context).confirm;
        onPressed = () => _confirmDelivery(context, ref);
      case DeliveryStage.delivered:
        // No action needed if already delivered
        return const SizedBox();
    }

    return Positioned(
      bottom: 36,
      left: 36,
      child: CustomElevatedButton(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 88),
        buttonColor: Theme.of(context).colorScheme.primary,
        elevation: 2,
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyles.coloredElevatedButton(context)
              .copyWith(fontSize: Sizes.font18),
        ),
      ),
    );
  }

  // Helper method for confirming stage transitions
  Future<void> _confirmStageTransition(
    BuildContext context,
    WidgetRef ref,
    String confirmMessage,
  ) async {
    final result = await OrderDialogs.confirmChoiceDialog(
      context,
      confirmMessage,
    );
    
    if (result) {
      ref.read(deliveryStageStateProvider.notifier).moveToNextStage();
    }
  }

  // Helper method for confirming final delivery
  Future<void> _confirmDelivery(BuildContext context, WidgetRef ref) async {
    final selectedOrder = ref.read(selectedOrderProvider).toNullable();
    
    final authority = ref.read(ordersServiceProvider).orderAuthority(
          userId: ref.read(currentUserProvider).id,
          orderDeliveryId: selectedOrder?.deliveryId,
        );

    switch (authority) {
      case (canProceed: true, isLoading: false):
        // Store the necessary data before showing the dialog
        final order = ref.read(selectedOrderProvider);
        
        final confirmChoice = await OrderDialogs.confirmChoiceDialog(
          context,
          S.of(context).doYouWantToConfirmTheOrder,
        );
        
        if (confirmChoice) {
          order.match(
            () {},
            (order) {
              final params = UpdateDeliveryStatus(
                orderId: order.id,
                deliveryStatus: DeliveryStatus.delivered,
              );
              ref
                  .read(mapConfirmOrderStatusProvider.notifier)
                  .confirmOrder(params);
              
              // Also update the delivery stage
              ref.read(deliveryStageStateProvider.notifier).moveToNextStage();
            },
          );
        }
      case (canProceed: false, isLoading: _):
        OrderDialogs.showCanNotProceedDialog(context);
      case _:
        return;
    }
  }
}
