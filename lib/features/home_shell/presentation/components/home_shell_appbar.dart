import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/presentation/components/appbar_with_icon_component.dart';
import '../../../../core/presentation/routing/app_router.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../core/presentation/widgets/custom_appbar.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../settings/presentation/providers/update_work_hours_provider.dart';
import '../../../settings/presentation/providers/update_work_zone_provider.dart';

class HomeShellAppBar extends ConsumerWidget {
  const HomeShellAppBar({super.key});

  static final IList<String> _noAppBarLocations = IListConst([
    const MapRoute().location,
  ]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = GoRouterState.of(context).routeLocation;

    // Home Tab
    if (location == const HomeRoute().location) {
      return CustomAppBar(
        centerTitle: true,
        title: Text(
          S.of(context).appName,
          style: TextStyles.f20(context)
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ),
      );
    }

    // Profile Tab
    else if (location == const ProfileRoute().location) {
      return CustomAppBar(
        centerTitle: true,
        title: AppBarWithIconComponent(
          icon: Assets.screensIconsProfile,
          title: S.of(context).myProfile,
        ),
      );
    }

    // Settings Tab
    else if (location == const SettingsRoute().location) {
      return CustomAppBar(
        centerTitle: true,
        title: AppBarWithIconComponent(
          icon: Assets.screensIconsSettings,
          title: S.of(context).settings,
        ),
      );
    } else if (location == const LanguageRoute().location) {
      return CustomAppBar(
        hasBackButton: true,
        centerTitle: true,
        title: AppBarWithIconComponent(
          icon: Assets.screensIconsLanguage,
          title: S.of(context).language,
        ),
      );
    } else if (location == const WorkingHoursRoute().location) {
      final hasWorkHours = ref.watch(hasWorkHoursProvider);

      final showBackButton =
          hasWorkHours is AsyncData && hasWorkHours.value!; // true only if set

      return CustomAppBar(
        hasBackButton: showBackButton,
        centerTitle: true,
        title: AppBarWithIconComponent(
          icon: Icons.access_time,
          title: S.of(context).working_hours,
        ),
      );
    } else if (location == const WorkingZoneRoute().location) {
      final hasWorkZone = ref.watch(hasWorkZoneProvider);

      final showBackButton =
          hasWorkZone is AsyncData && hasWorkZone.value!; // true only if set

      return CustomAppBar(
        hasBackButton: showBackButton,
        centerTitle: true,
        title: AppBarWithIconComponent(
          icon: Icons.map,
          title: S.of(context).working_zone,
        ),
      );
    }

    return const CustomAppBar();
  }
}

extension StatefulNavigationShellX on StatefulNavigationShell {
  bool get currentLocationHasAppBar {
    final location = shellRouteContext.routerState.routeLocation;
    return !HomeShellAppBar._noAppBarLocations.contains(location);
  }
}
