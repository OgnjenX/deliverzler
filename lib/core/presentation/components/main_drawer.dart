import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../../../generated/l10n.dart';
import '../styles/styles.dart';
import '../utils/riverpod_framework.dart';
import 'main_drawer_bottom_component.dart';
import 'main_drawer_user_info_component.dart';

class MainDrawer extends ConsumerWidget {
  const MainDrawer({
    required this.scaffoldKey,
    super.key,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final _indexNotifier = 0;
    /*ref.watch(HomeBaseNavProviders.currentIndex.notifier);*/

    return SizedBox(
      width: Sizes.drawerWidth240,
      child: Drawer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.drawerPaddingV88,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainDrawerUserInfoComponent(),
                const SizedBox(
                  height: Sizes.marginV28,
                ),
                DrawerItem(
                  title: S.of(context).myProfile,
                  icon: Assets.screensIconsProfile,
                  onTap: () {
                    scaffoldKey.currentState!.openEndDrawer();
                    //_indexNotifier.state = 0;
                  },
                ),
                DrawerItem(
                  title: S.of(context).settings,
                  icon: Assets.screensIconsSettings,
                  onTap: () {
                    scaffoldKey.currentState!.openEndDrawer();
                    //_indexNotifier.state = 2;
                  },
                ),
                const SizedBox(
                  height: Sizes.marginV20,
                ),
                const MainDrawerBottomComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    required this.title,
    required this.icon,
    required this.onTap,
    super.key,
  });

  final String title;
  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ImageIcon(
        AssetImage(icon),
      ),
      title: Text(
        title,
        style: TextStyles.f18(context)
            .copyWith(fontWeight: FontStyles.fontWeightMedium),
      ),
      onTap: onTap,
      horizontalTitleGap: 0,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Sizes.drawerPaddingH28,
      ),
    );
  }
}
