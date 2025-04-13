import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/presentation/providers/provider_utils.dart';
import '../../../../../core/presentation/utils/fp_framework.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../home/domain/value_objects.dart';
import '../../../../home/presentation/providers/delivery_stage_provider.dart';
import '../../../../home/presentation/providers/selected_order_provider.dart';
import '../place_details_provider.dart';

part 'target_location_geo_point_provider.g.dart';

@riverpod
class TargetLocationGeoPoint extends _$TargetLocationGeoPoint
    with NotifierUpdate {
  @override
  Option<GeoPoint> build() {
    final currentPlaceDetails = ref.watch(currentPlaceDetailsProvider);
    final currentDeliveryStage = ref.watch(deliveryStageStateProvider);
    final selectedOrder = ref.watch(selectedOrderProvider);

    // First check if we have a selected order
    return selectedOrder.match(
      () => currentPlaceDetails.match(
        () => const None(),
        (placeDetails) => Some(placeDetails.geoPoint),
      ),
      (order) {
        // When we have an order, prioritize the delivery stage logic
        // over manually selected places
        if (currentDeliveryStage == DeliveryStage.atSeller || 
            currentDeliveryStage == DeliveryStage.pickedUp) {
          // Use seller's address for 'atSeller' and 'pickedUp' stages
          return Option<GeoPoint>.fromNullable(order.sellerAddress?.geoPoint);
        } else {
          // Use buyer's address for 'atBuyer' and 'delivered' stages
          return Option<GeoPoint>.fromNullable(order.buyerAddress?.geoPoint);
        }
      },
    );
  }
}
