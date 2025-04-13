import 'package:flutter/material.dart';

import '../../../../core/core_features/theme/presentation/utils/app_colors.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../generated/l10n.dart';
import '../../domain/value_objects.dart';
import '../providers/delivery_stage_provider.dart';

class DeliveryStageTracker extends ConsumerWidget {
  const DeliveryStageTracker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStage = ref.watch(deliveryStageStateProvider);
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.all(Sizes.marginV16),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.cardR12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.cardPaddingV16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.of(context).deliveryStageTrackerTitle,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: Sizes.marginV16),

            // Stage indicators
            Row(
              children: [
                _buildStageIndicator(
                  context,
                  DeliveryStage.atSeller,
                  currentStage,
                  S.of(context).deliveryStagePickup,
                ),
                _buildStageDivider(
                  currentStage.index >= DeliveryStage.pickedUp.index,
                  theme,
                ),
                _buildStageIndicator(
                  context,
                  DeliveryStage.pickedUp,
                  currentStage,
                  S.of(context).deliveryStagePicked,
                ),
                _buildStageDivider(
                  currentStage.index >= DeliveryStage.atBuyer.index,
                  theme,
                ),
                _buildStageIndicator(
                  context,
                  DeliveryStage.atBuyer,
                  currentStage,
                  S.of(context).deliveryStageDropoff,
                ),
                _buildStageDivider(
                  currentStage.index >= DeliveryStage.delivered.index,
                  theme,
                ),
                _buildStageIndicator(
                  context,
                  DeliveryStage.delivered,
                  currentStage,
                  S.of(context).deliveryStageCompleted,
                ),
              ],
            ),

            const SizedBox(height: Sizes.marginV20),

            // Action button
            if (currentStage != DeliveryStage.delivered)
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(deliveryStageStateProvider.notifier)
                      .moveToNextStage();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.extension<AppColors>()?.primary ?? Colors.blue,
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: Text(_getActionButtonText(context, currentStage)),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildStageIndicator(
    BuildContext context,
    DeliveryStage stage,
    DeliveryStage currentStage,
    String label,
  ) {
    final isCompleted = currentStage.index >= stage.index;
    final isCurrent = currentStage == stage;
    final theme = Theme.of(context);
    final colors = theme.extension<AppColors>();

    return Expanded(
      child: Column(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: isCompleted ? (colors?.primary ?? Colors.blue) : Colors.grey.shade300,
              shape: BoxShape.circle,
              border: isCurrent
                  ? Border.all(color: colors?.primary ?? Colors.blue, width: 3)
                  : null,
            ),
            child: isCompleted
                ? const Icon(Icons.check, color: Colors.white, size: 18)
                : null,
          ),
          const SizedBox(height: Sizes.marginV8),
          Text(
            label,
            style: TextStyles.f12(context).copyWith(
              fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildStageDivider(bool isCompleted, ThemeData theme) {
    final colors = theme.extension<AppColors>();
    return Container(
      width: 20,
      height: 2,
      color: isCompleted ? (colors?.primary ?? Colors.blue) : Colors.grey.shade300,
    );
  }

  String _getActionButtonText(
      BuildContext context, DeliveryStage currentStage,) {
    switch (currentStage) {
      case DeliveryStage.atSeller:
        return S.of(context).deliveryStagePickedUpAction;
      case DeliveryStage.pickedUp:
        return S.of(context).deliveryStageAtBuyerAction;
      case DeliveryStage.atBuyer:
        return S.of(context).deliveryStageCompletedAction;
      case DeliveryStage.delivered:
        return '';
    }
  }
}
