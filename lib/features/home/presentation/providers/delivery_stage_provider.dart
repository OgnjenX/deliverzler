import '../../../../core/presentation/providers/provider_utils.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../domain/value_objects.dart';
import 'selected_order_provider.dart';

part 'delivery_stage_provider.g.dart';

@riverpod
class DeliveryStageState extends _$DeliveryStageState with NotifierUpdate {
  @override
  DeliveryStage build() {
    ref.keepAliveUntilNoListeners();

    // Reset delivery stage when order changes
    ref.listen(selectedOrderProvider, (_, __) {
      state = DeliveryStage.atSeller;
    });

    // Default to first stage (navigating to seller)
    return DeliveryStage.atSeller;
  }

  void moveToNextStage() {
    switch (state) {
      case DeliveryStage.atSeller:
        state = DeliveryStage.pickedUp;
      case DeliveryStage.pickedUp:
        state = DeliveryStage.atBuyer;
      case DeliveryStage.atBuyer:
        state = DeliveryStage.delivered;
      case DeliveryStage.delivered:
        // Already at final stage
        break;
    }
  }

  void resetStage() {
    state = DeliveryStage.atSeller;
  }
}
