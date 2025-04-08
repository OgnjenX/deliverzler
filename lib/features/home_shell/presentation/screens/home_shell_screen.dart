import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../auth/presentation/providers/sign_out_provider.dart';
import '../../../../core/infrastructure/notification/fcm_remote_message_providers.dart';
import '../../../../core/infrastructure/notification/notification.dart';
import '../../../../core/infrastructure/notification/notification_service.dart';
import '../../../../core/infrastructure/services/connection_stream_service.dart';
import '../../../../core/presentation/routing/app_router.dart';
import '../../../../core/presentation/utils/fp_framework.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../core/presentation/widgets/platform_widgets/platform_appbar.dart';
import '../../../../core/presentation/widgets/toasts.dart';
import '../../../settings/presentation/providers/update_work_hours_provider.dart';
import '../../../settings/presentation/providers/update_work_zone_provider.dart';
import '../components/home_shell_appbar.dart';
import '../components/home_shell_bottom_nav_bar.dart';
import '../utils/tab_item.dart';

class HomeShellScreen extends HookConsumerWidget {
  const HomeShellScreen({required this.navigationShell, Key? key})
      : super(key: key ?? const ValueKey<String>('HomeShellScreen'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(connectionStreamProvider, (prevState, newState) {
      newState.whenOrNull(
        data: (status) {
          Toasts.showConnectionToast(context, connectionStatus: status);
        },
      );
    });

    ref.easyListen(signOutStateProvider);

    ref.listen(onMessageProvider, (previous, next) {
      next.whenData(
        (message) {
          ref.read(notificationServiceProvider).showRemoteNotification(message);
        },
      );
    });

    ref.listen(
      tappedNotificationProvider,
      (previous, next) {
        if (next is Some<NotificationPayload>) {
          final notification = next.value;
          if (notification.routeLocation case final location?) {
            context.go(location);
          }
        }
      },
    );

    final location = GoRouterState.of(context).routeLocation;
    final hasWorkHours = ref.watch(hasWorkHoursProvider);
    final hasWorkZone = ref.watch(hasWorkZoneProvider);

    final shouldHideBottomNavBar =
        (location == const WorkingHoursRoute().location &&
                hasWorkHours is AsyncData &&
                hasWorkHours.value == false) ||
            (location == const WorkingZoneRoute().location &&
                hasWorkZone is AsyncData &&
                hasWorkZone.value == false);

    void onSelectTab(TabItem tab) {
      navigationShell.goBranch(tab.index);
    }

    return PopScope(
      canPop: TabItem.values[navigationShell.currentIndex] == TabItem.home,
      onPopInvokedWithResult: (canPop, __) {
        if (canPop) {
          navigationShell.goBranch(TabItem.home.index);
        }
      },
      child: Scaffold(
        appBar: navigationShell.currentLocationHasAppBar
            ? PlatformAppBar(appbar: const HomeShellAppBar())
            : null,
        body: navigationShell,
        bottomNavigationBar: shouldHideBottomNavBar
            ? null
            : HomeShellBottomNavBar(
                currentTab: TabItem.values[navigationShell.currentIndex],
                onSelectTab: onSelectTab,
              ),
        // TODO(Ahmed): Migrate to AdaptiveLayout HomeShell when the bottomNavigation displacement
        // bug is fixed: https://github.com/flutter/flutter/issues/131734
        /* body: AdaptiveLayout(
          body: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.standard: SlotLayout.from(
                key: const Key('Body Standard'),
                builder: (_) => navigationShell,
              ),
            },
          ),
          bottomNavigation: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.small: SlotLayout.from(
                key: const Key('Bottom Navigation Small'),
                builder: (_) => HomeShellBottomNavBar(
                  currentTab: selectedTab.value,
                  onSelectTab: onSelectTab,
                ),
              )
            },
          ),
          primaryNavigation: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              Breakpoints.medium: SlotLayout.from(
                key: const Key('Primary Navigation Medium'),
                builder: (_) => HomeShellNavigationRail(
                  currentTab: selectedTab.value,
                  onSelectTab: onSelectTab,
                ),
              ),
              Breakpoints.large: SlotLayout.from(
                key: const Key('Primary Navigation Large'),
                builder: (_) => HomeShellNavigationRail(
                  extended: true,
                  currentTab: selectedTab.value,
                  onSelectTab: onSelectTab,
                ),
              ),
            },
          ),
        ), */
      ),
    );
  }
}
