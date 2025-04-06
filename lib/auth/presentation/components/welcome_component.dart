import 'package:flutter/material.dart';

import '../../../core/core_features/theme/presentation/utils/custom_colors.dart';
import '../../../core/presentation/styles/styles.dart';
import '../../../generated/assets.dart';
import '../../../generated/l10n.dart';

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              child: Text(
                S.of(context).welcome,
                style: TextStyles.f20(context).copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Image.asset(
              Assets.loginHiHand,
              height: 44,
              width: 44,
              fit: BoxFit.contain,
            ),
          ],
        ),
        const SizedBox(
          height: Sizes.marginV12,
        ),
        Text(
          S.of(context).signInToYourAccount,
          style: TextStyles.f16SemiBold(context)
              .copyWith(color: customColors(context).greyColor),
        ),
      ],
    );
  }
}
