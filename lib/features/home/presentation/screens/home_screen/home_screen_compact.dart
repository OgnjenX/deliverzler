import 'package:flutter/material.dart';

import '../../../../../core/presentation/routing/app_router.dart';
import '../../../../../core/presentation/screens/nested_screen_scaffold.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../core/presentation/widgets/loading_widgets.dart';
import '../../../../../generated/l10n.dart';
import '../../../../settings/presentation/providers/update_work_hours_provider.dart';
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
      //Using select to avoid rebuilding when location change
      locationStreamProvider.select((value) => value.whenData((value) => true)),
    );

    // Listen for work hours state
    final hasWorkHours = ref.watch(
      hasWorkHoursProvider,
    );

    // If work hours are not set, navigate to the Work Hours settings screen
    if (hasWorkHours is AsyncData && !hasWorkHours.value!) {
      Future.microtask(() {
        if (context.mounted) {
          const WorkingHoursRoute().go(context);
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
