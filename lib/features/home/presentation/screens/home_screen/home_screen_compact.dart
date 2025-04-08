import 'package:flutter/material.dart';

import '../../../../../core/presentation/routing/app_router.dart';
import '../../../../../core/presentation/screens/nested_screen_scaffold.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../core/presentation/widgets/loading_widgets.dart';
import '../../../../../generated/l10n.dart';
import '../../../../settings/presentation/providers/update_work_hours_provider.dart';
import '../../../../settings/presentation/providers/update_work_zone_provider.dart';
import '../../components/retry_again_component.dart';
import '../../components/upcoming_orders_component.dart';
import '../../providers/location_stream_provider.dart';
import '../../providers/update_delivery_geo_point_provider.dart';
import '../../utils/location_error.dart';

class HomeScreenCompact extends HookConsumerWidget {
  const HomeScreenCompact({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationAsync = ref.watch(
      locationStreamProvider.select((value) => value.whenData((value) => true)),
    );

    // Listen for work hours state
    final hasWorkHours = ref.watch(
      hasWorkHoursProvider,
    );

    // Listen for work zone state
    final hasWorkZone = ref.watch(
      hasWorkZoneProvider, // Replace with actual provider for work zone
    );

    // If work hours are not set, navigate to the Work Hours settings screen
    if (hasWorkHours is AsyncData && !hasWorkHours.value!) {
      Future.microtask(() {
        if (context.mounted) {
          const WorkingHoursRoute().go(context);
        }
      });
    }

    // If work zone is not set, navigate to the Work Zone settings screen
    if (hasWorkZone is AsyncData && !hasWorkZone.value!) {
      Future.microtask(() {
        if (context.mounted) {
          const WorkingZoneRoute().go(context);
        }
      });
    }

    // Sequential navigation: If both are missing, show them one after the other
    if (hasWorkHours is AsyncData &&
        !hasWorkHours.value! &&
        hasWorkZone is AsyncData &&
        !hasWorkZone.value!) {
      // Start by navigating to work hours if both are missing
      Future.microtask(() {
        if (context.mounted) {
          const WorkingHoursRoute().go(context);
        }
      });
    } else if (hasWorkHours is AsyncData &&
        hasWorkHours.value! &&
        hasWorkZone is AsyncData &&
        !hasWorkZone.value!) {
      // Once work hours are completed, navigate to work zone
      Future.microtask(() {
        if (context.mounted) {
          const WorkingZoneRoute().go(context);
        }
      });
    }

    ref.listen(updateDeliveryGeoPointStateProvider, (previous, next) {});

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
        data: (_) => const UpcomingOrdersComponent(),
      ),
    );
  }
}
