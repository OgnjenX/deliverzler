import 'package:flutter/material.dart';

import '../../../../../core/core_features/locale/presentation/providers/app_locale_provider.dart';
import '../../../../../core/core_features/locale/presentation/providers/current_app_locale_provider.dart';
import '../../../../../core/core_features/locale/presentation/utils/app_locale.dart';
import '../../../../../core/presentation/styles/styles.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../core/presentation/widgets/platform_widgets/platform_icons.dart';
import '../../../../../core/presentation/widgets/platform_widgets/platform_widget.dart';

class LanguageItemComponent extends ConsumerWidget {
  const LanguageItemComponent({
    required this.appLocale,
    super.key,
  });

  final AppLocale appLocale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PlatformWidget(
      material: (_) {
        return InkWell(
          onTap: () {
            ref
                .read(appLocaleControllerProvider.notifier)
                .changeLocale(appLocale);
          },
          child: _SharedItemComponent(appLocale),
        );
      },
      cupertino: (_) {
        return GestureDetector(
          onTap: () {
            ref
                .read(appLocaleControllerProvider.notifier)
                .changeLocale(appLocale);
          },
          child: _SharedItemComponent(appLocale),
        );
      },
    );
  }
}

class _SharedItemComponent extends StatelessWidget {
  const _SharedItemComponent(this.appLocale);

  final AppLocale appLocale;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Sizes.paddingV12,
        horizontal: Sizes.paddingH20,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withValues(alpha: 0.9),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).focusColor.withValues(alpha: 0.1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(appLocale.flag),
                radius: Sizes.icon16,
              ),
              Consumer(
                builder: (context, ref, child) {
                  final currentLocale = ref.watch(currentAppLocaleProvider);
                  return (currentLocale.code == appLocale.code)
                      ? CircleAvatar(
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withValues(alpha: 0.8),
                          radius: Sizes.icon16,
                          child: Icon(
                            AppPlatformIcons.platformIcons(context).checkMark,
                            size: Sizes.icon24,
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      : const SizedBox();
                },
              ),
            ],
          ),
          const SizedBox(
            width: Sizes.marginH16,
          ),
          Expanded(
            child: Text(
              appLocale.getLanguageName(context),
              style: TextStyles.f16(context),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
