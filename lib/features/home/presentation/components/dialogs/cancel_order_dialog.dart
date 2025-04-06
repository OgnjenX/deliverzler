import 'package:flutter/material.dart';

import '../../../../../core/presentation/styles/styles.dart';
import '../../../../../generated/l10n.dart';

class CancelOrderDialog extends StatelessWidget {
  const CancelOrderDialog({required this.cancelNoteController, super.key});

  final TextEditingController cancelNoteController;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: Sizes.dialogWidth280,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${S.of(context).reasonForCancelingTheOrder}:',
            style: TextStyles.f16(context),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: Sizes.marginV12,
          ),
          Material(
            color: Colors.transparent,
            child: TextFormField(
              key: const ValueKey('cancel_note'),
              controller: cancelNoteController,
              decoration: InputDecoration(
                filled: false,
                hintText: '${S.of(context).typeYourNote}...',
              ),
              textInputAction: TextInputAction.newline,
              minLines: 1,
              maxLines: 6,
              maxLength: 200,
            ),
          ),
        ],
      ),
    );
  }
}
