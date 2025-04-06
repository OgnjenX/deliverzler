import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../../../generated/l10n.dart';
import '../styles/styles.dart';
import '../utils/riverpod_framework.dart';

class MainDrawerBottomComponent extends ConsumerWidget {
  const MainDrawerBottomComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: Sizes.drawerPaddingH28,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            S.of(context).appName,
            style: TextStyles.f18(context).copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontStyles.fontWeightExtraBold,
            ),
          ),
          const SizedBox(
            width: Sizes.marginH6,
          ),
          Image.asset(
            Assets.coreAppLogo,
            height: 32,
            width: 32,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
