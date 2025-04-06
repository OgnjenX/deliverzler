import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../routing/app_router.dart';
import '../styles/styles.dart';
import '../widgets/custom_elevated_button.dart';

class RouteErrorComponent extends StatelessWidget {
  const RouteErrorComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          S.of(context).screenNotFound,
          style: TextStyles.f20(context)
              .copyWith(fontWeight: FontStyles.fontWeightSemiBold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: Sizes.marginV28,
        ),
        CustomElevatedButton(
          onPressed: () {
            const HomeRoute().go(context);
          },
          buttonColor: Theme.of(context).colorScheme.primary,
          child: Text(
            S.of(context).goToHome,
            style: TextStyles.coloredElevatedButton(context),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
