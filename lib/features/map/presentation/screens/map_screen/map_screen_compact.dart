import 'package:flutter/material.dart';

import '../../../../../core/infrastructure/notification/notification_service.dart';
import '../../../../../core/presentation/routing/app_router.dart';
import '../../../../../core/presentation/screens/nested_screen_scaffold.dart';
import '../../../../../core/presentation/utils/fp_framework.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../core/presentation/widgets/loading_widgets.dart';
import '../../../../../core/presentation/widgets/toasts.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/domain/value_objects.dart';
import '../../../../home/presentation/components/retry_again_component.dart';
import '../../../../home/presentation/providers/delivery_stage_provider.dart';
import '../../../../home/presentation/providers/location_stream_provider.dart';
import '../../../../home/presentation/utils/location_error.dart';
import '../../../../home/presentation/widgets/delivery_stage_tracker.dart';
import '../../components/google_map_component.dart';
import '../../components/map_confirm_button_component.dart';
import '../../components/map_directions_info_component.dart';
import '../../components/map_floating_action_button.dart';
import '../../components/map_floating_search_bar.dart';
import '../../components/map_phone_call_component.dart';
import '../../providers/is_arrived_target_location_provider.dart';
import '../../providers/map_confirm_order_provider.dart';
import '../../providers/target_location_providers/target_location_geo_point_provider.dart';

class MapScreenCompact extends HookConsumerWidget {
  const MapScreenCompact({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsync = ref.watch(locationStreamProvider);
    final deliveryStage = ref.watch(deliveryStageStateProvider);

    useEffect(
      () {
        if (ref.read(targetLocationGeoPointProvider) is None) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Toasts.showTitledToast(
              context,
              title: S.of(context).pleaseSearchForLocation,
              description: S.of(context).userHasNotProvidedLocation,
            );
          });
        }
        return null;
      },
      [],
    );

    ref.listen<bool>(isArrivedTargetLocationProvider, (previous, next) {
      if (next == true) {
        // Show notification based on current delivery stage
        var title = S.of(context).arrivedLocation;
        var body = S.of(context).youAreCloseToLocationArea;

        // Update notification message based on delivery stage
        if (deliveryStage == DeliveryStage.atSeller) {
          title = S.of(context).arrivedLocation;
          body = "You've arrived at the seller location. Ready for pickup!";
        } else if (deliveryStage == DeliveryStage.atBuyer) {
          title = S.of(context).arrivedLocation;
          body = S.of(context).youAreCloseToLocationArea;
        }

        ref.read(notificationServiceProvider).showLocalNotification(
              title: title,
              body: body,
            );
      }
    });

    ref.easyListen(
      mapConfirmOrderStatusProvider,
      whenData: (state) {
        if (state.isSome()) {
          const HomeRoute().go(context);
        }
      },
    );

    return NestedScreenScaffold(
      body: locationAsync.when(
        skipLoadingOnReload: true,
        skipLoadingOnRefresh: !locationAsync.hasError,
        loading: () =>
            TitledLoadingIndicator(message: S.of(context).determine_location),
        error: (error, st) => RetryAgainComponent(
          description: (error as LocationError).getErrorText(context),
          onPressed: () {
            ref.invalidate(locationStreamProvider);
          },
        ),
        data: (_) => const Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.expand,
          children: [
            GoogleMapComponent(),
            MapDirectionsInfoComponent(),
            MapPhoneCallComponent(),
            MapConfirmButtonComponent(),
            MapFloatingSearchBar(),
            MapFloatingActionButton(),

            // Add the delivery stage tracker at the bottom of the screen
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: DeliveryStageTracker(),
            ),
          ],
        ),
      ),
    );
  }
}
