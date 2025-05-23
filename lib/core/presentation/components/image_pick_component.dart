import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../../../generated/l10n.dart';
import '../../core_features/theme/presentation/utils/custom_colors.dart';
import '../styles/styles.dart';

class ImagePickComponent extends StatelessWidget {
  const ImagePickComponent({
    required this.pickFromCameraCallBack,
    required this.pickFromGalleryCallBack,
    super.key,
  });

  final void Function(BuildContext ctx)? pickFromCameraCallBack;
  final void Function(BuildContext ctx)? pickFromGalleryCallBack;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: const EdgeInsets.symmetric(
        vertical: Sizes.paddingV8,
        horizontal: Sizes.paddingH8,
      ),
      constraints: const BoxConstraints(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: () {
        FocusScope.of(context).requestFocus(FocusNode());
        showDialog<void>(
          context: context,
          builder: (BuildContext ctx) {
            // TODO(Ahmed): Use platform alert dialog.
            return AlertDialog(
              title: Text(
                S.of(context).chooseOption,
                style: TextStyles.f18(context).copyWith(color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Divider(
                    height: 1,
                  ),
                  Material(
                    color: Theme.of(ctx).primaryColor,
                    child: ListTile(
                      onTap: pickFromCameraCallBack == null
                          ? null
                          : () => pickFromCameraCallBack!(ctx),
                      title: Text(
                        S.of(context).camera,
                        style: TextStyles.f18(context),
                      ),
                      leading: const Icon(
                        Icons.camera,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1,
                  ),
                  Material(
                    color: Theme.of(ctx).primaryColor,
                    child: ListTile(
                      onTap: pickFromGalleryCallBack == null
                          ? null
                          : () => pickFromGalleryCallBack!(ctx),
                      title: Text(
                        S.of(context).gallery,
                        style: TextStyles.f18(context),
                      ),
                      leading: const Icon(
                        Icons.account_box,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      shape: const CircleBorder(),
      fillColor: Theme.of(context).primaryColor,
      elevation: 1,
      child: ImageIcon(
        const AssetImage(Assets.iconsCamera),
        size: 12,
        color: customColors(context).greyColor,
      ),
    );
  }
}
