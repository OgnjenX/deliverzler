import 'package:flutter/cupertino.dart';

import '../../../../core/presentation/routing/navigation_service.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../core/presentation/widgets/custom_elevated_button.dart';
import '../../../../core/presentation/widgets/dialogs.dart';
import '../../../../core/presentation/widgets/toasts.dart';
import '../../../../generated/l10n.dart';
import '../../domain/order.dart';
import '../components/dialogs/cancel_order_dialog.dart';
import '../components/dialogs/order_details_dialog.dart';

abstract class OrderDialogs {
  static void showOrderDetailsDialog(
    BuildContext context, {
    required AppOrder order,
  }) {
    Dialogs.showCustomDialog(
      context,
      content: (_) => OrderDetailsDialog(
        order: order,
      ),
      materialActions: (ctx) => [
        CustomElevatedButton(
          enableGradient: true,
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.buttonPaddingV12,
            horizontal: Sizes.buttonPaddingH80,
          ),
          onPressed: () => NavigationService.popDialog(ctx),
          child: Text(
            S.of(context).back,
            style: TextStyles.coloredElevatedButton(context),
          ),
        ),
      ],
      cupertinoActions: (ctx) => [
        CupertinoDialogAction(
          onPressed: () => NavigationService.popDialog(ctx),
          child: Text(
            S.of(context).back,
            style: TextStyles.cupertinoDialogAction(context),
          ),
        ),
      ],
    );
  }

  static Future<String?> showCancelOrderDialog(BuildContext context) async {
    TextEditingController? cancelNoteController;
    return Dialogs.showConfirmDialog(
      context,
      title: S.of(context).cancelTheOrder,
      content: (_) => HookBuilder(
        builder: (context) {
          cancelNoteController = useTextEditingController(text: '');
          return CancelOrderDialog(
            cancelNoteController: cancelNoteController!,
          );
        },
      ),
      confirmTitle: S.of(context).confirm,
      confirmCallback: (ctx) =>
          NavigationService.popDialog(ctx, result: cancelNoteController!.text),
    ).then((result) {
      return result as String?;
    });
  }

  static void showCanNotProceedDialog(BuildContext context) {
    return Toasts.showTitledToast(
      context,
      title: S.of(context).youCanNotProceedThisOrder,
      description: S.of(context).youCanOnlyProceedOrdersYouDelivering,
    );
  }

  static Future<bool> confirmChoiceDialog(
    BuildContext context,
    String message,
  ) async {
    return Dialogs.showConfirmDialog(
      context,
      title: S.of(context).areYouSure,
      description: message,
      confirmTitle: S.of(context).confirm,
      confirmCallback: (ctx) => NavigationService.popDialog(ctx, result: true),
    ).then((result) {
      final res = result as bool?;
      return res ?? false;
    });
  }
}
