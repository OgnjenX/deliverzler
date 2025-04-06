import 'package:flutter/material.dart';

import '../styles/styles.dart';

class AppBarWithIconComponent extends StatelessWidget {
  const AppBarWithIconComponent({
    required this.icon,
    required this.title,
    super.key,
  });

  final dynamic icon; // Accepts String or IconData
  final String title;

  @override
  Widget build(BuildContext context) {
    Widget iconWidget;

    if (icon is String) {
      iconWidget = ImageIcon(
        AssetImage(icon as String),
        color: Theme.of(context).iconTheme.color,
        size: Sizes.icon24,
      );
    } else if (icon is IconData) {
      iconWidget = Icon(
        icon as IconData,
        color: Theme.of(context).iconTheme.color,
        size: Sizes.icon24,
      );
    } else {
      iconWidget = const SizedBox.shrink();
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconWidget,
        const SizedBox(width: Sizes.marginH8),
        Text(
          title,
          style: TextStyles.f20(context)
              .copyWith(fontWeight: FontStyles.fontWeightSemiBold),
        ),
      ],
    );
  }
}
