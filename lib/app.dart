import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/core_features/locale/presentation/providers/current_app_locale_provider.dart';
import 'core/core_features/theme/presentation/providers/current_app_theme_provider.dart';
import 'core/core_features/theme/presentation/utils/app_theme.dart';
import 'core/presentation/extensions/device_info_extensions.dart';
import 'core/presentation/providers/device_info_providers.dart';
import 'core/presentation/routing/app_router.dart';
import 'core/presentation/routing/navigation_service.dart';
import 'core/presentation/utils/riverpod_framework.dart';
import 'core/presentation/utils/scroll_behaviors.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    useOnPlatformBrightnessChange((previous, current) {
      ref.read(platformBrightnessProvider.notifier).update((_) => current);
    });
    final isOldAndroid = ref.watch(androidDeviceInfoProvider).requireValue.isOldAndroid;
    final themeMode = ref.watch(currentAppThemeModeProvider);
    final locale = ref.watch(currentAppLocaleProvider);

    return MaterialApp.router(
      routerConfig: router,
      builder: (_, child) {
        return ScrollConfiguration(
          behavior: MainScrollBehavior(),
          child: GestureDetector(
            onTap: NavigationService.removeFocus,
            child: child,
          ),
        );
      },
      title: 'Deliverzler',
      debugShowCheckedModeBanner: false,
      color: Theme.of(context).colorScheme.primary,
      theme: themeMode.getThemeData(locale.fontFamily, isOldAndroid: isOldAndroid),
      locale: Locale(locale.code),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
