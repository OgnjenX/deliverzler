import 'package:flutter/material.dart';

import '../../../../core/core_features/theme/presentation/utils/custom_colors.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/widgets/custom_outlined_button.dart';

class CardButtonComponent extends StatelessWidget {
  const CardButtonComponent({
    required this.title,
    required this.isColored,
    required this.onPressed,
    this.buttonColor,
    super.key,
  });

  final String title;
  final bool isColored;
  final VoidCallback? onPressed;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      padding: const EdgeInsets.symmetric(
        vertical: Sizes.buttonPaddingV12,
        horizontal: Sizes.buttonPaddingH34,
      ),
      constraints: const BoxConstraints(minWidth: 136),
      side: isColored
          ? null
          : BorderSide(color: customColors(context).greyColor!),
      enableGradient: isColored && buttonColor == null,
      buttonColor: buttonColor,
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyles.f14(context).copyWith(
          color: isColored ? customColors(context).whiteColor : null,
          fontWeight: FontStyles.fontWeightSemiBold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
