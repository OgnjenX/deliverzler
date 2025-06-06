import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/core_features/theme/presentation/utils/custom_colors.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../home/presentation/providers/selected_order_provider.dart';
import '../providers/is_arrived_target_location_provider.dart';

class MapPhoneCallComponent extends ConsumerWidget {
  const MapPhoneCallComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final arrivedTargetLocation = ref.watch(isArrivedTargetLocationProvider);
    final orderPhone = ref.watch(
      selectedOrderProvider.select(
        (order) => order.flatMap((order) => order.validatedUserPhone),
      ),
    );

    return arrivedTargetLocation && orderPhone.isSome()
        ? Positioned(
            top: Sizes.mapDirectionsInfoTop,
            right: Sizes.paddingH20,
            child: FloatingActionButton(
              heroTag: const Text('fab2'),
              backgroundColor: Theme.of(context).colorScheme.primary,
              elevation: 2,
              onPressed: () async {
                final phone = Uri.parse('tel:$orderPhone');
                if (await canLaunchUrl(phone)) {
                  await launchUrl(phone);
                }
              },
              child: Icon(
                Icons.phone,
                color: customColors(context).whiteColor,
              ),
            ),
          )
        : const SizedBox();
  }
}
