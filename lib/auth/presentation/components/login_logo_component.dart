import 'package:flutter/material.dart';

import '../../../core/presentation/styles/styles.dart';
import '../../../generated/assets.dart';
import '../../../generated/l10n.dart';

class LoginLogoComponent extends StatelessWidget {
  const LoginLogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.coreAppLogo,
          height: 140,
          width: 140,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: Sizes.marginV12,
        ),
        Text(
          S.of(context).appName,
          style: TextStyles.f28(context),
        ),
      ],
    );
  }
}
