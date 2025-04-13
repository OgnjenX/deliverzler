import 'package:flutter/material.dart';

import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/widgets/cached_network_image_circular.dart';
import '../../../../generated/l10n.dart';
import '../../domain/order.dart';

class CardUserDetailsComponent extends StatelessWidget {
  const CardUserDetailsComponent({
    required this.order,
    super.key,
  });

  final AppOrder order;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImageCircular(
          imageUrl: order.userImage,
          radius: Sizes.imageR28,
        ),
        const SizedBox(
          width: Sizes.marginH8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                order.userName.isEmpty
                    ? S.of(context).user + order.userId.substring(0, 6)
                    : order.userName,
                style: TextStyles.f14(context)
                    .copyWith(fontWeight: FontStyles.fontWeightBold),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${order.buyerAddress!.state}, ${order.buyerAddress!.city}, ${order.buyerAddress!.street}',
                style: TextStyles.f12(context),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                order.buyerAddress!.mobile,
                style: TextStyles.f12(context),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
