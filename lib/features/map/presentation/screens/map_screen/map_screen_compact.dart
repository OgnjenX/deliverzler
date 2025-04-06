import 'package:flutter/material.dart';

import '../../../../../core/infrastructure/notification/notification_service.dart';
import '../../../../../core/presentation/routing/app_router.dart';
import '../../../../../core/presentation/screens/nested_screen_scaffold.dart';
import '../../../../../core/presentation/utils/fp_framework.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../core/presentation/widgets/loading_widgets.dart';
import '../../../../../core/presentation/widgets/toasts.dart';
import '../../../../../generated/l10n.dart';
import '../../../../home/presentation/components/retry_again_component.dart';
import '../../../../home/presentation/providers/location_stream_provider.dart';
import '../../../../home/presentation/utils/location_error.dart';
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
        ref.read(notificationServiceProvider).showLocalNotification(
              title: S.of(context).arrivedLocation,
              body: S.of(context).youAreCloseToLocationArea,
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
          ],
        ),
      ),
    );
  }
}
