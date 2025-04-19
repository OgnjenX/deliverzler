import 'package:flutter/material.dart';

import '../../../../core/presentation/helpers/date_helper.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../generated/l10n.dart';
import '../../domain/order.dart';
import '../../domain/value_objects.dart';

class CardOrderDetailsComponent extends StatelessWidget {
  const CardOrderDetailsComponent({
    required this.order,
    super.key,
  });

  final AppOrder order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Container(
              height: Sizes.icon8,
              width: Sizes.icon8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: order.deliveryStatus == DeliveryStatus.upcoming
                    ? Colors.green
                    : Colors.blue,
              ),
            ),
            const SizedBox(
              width: Sizes.marginH4,
            ),
            Expanded(
              child: Text(
                order.deliveryStatus == DeliveryStatus.upcoming
                    ? S.of(context).orderUpcoming
                    : S.of(context).orderOnTheWay,
                style: TextStyles.f14(context).copyWith(
                  color: order.deliveryStatus == DeliveryStatus.upcoming
                      ? Colors.green
                      : Colors.blue,
                  fontWeight: FontStyles.fontWeightExtraBold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: Sizes.marginV2,
        ),
        Text(
          order.isAsap
              ? S.of(context).asSoonAsPossible
              : DateHelper.convertEpochToLocal(context, order.deliveryDateTime),
          style: TextStyles.f12(context),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
