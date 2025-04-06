import 'package:flutter/material.dart';

import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/widgets/platform_widgets/platform_icons.dart';
import '../../../../generated/l10n.dart';

enum TabItem {
  home,
  profile,
  settings;

  const TabItem();

  Widget getTabItemIcon(BuildContext context) {
    return _getTabIcon(context, _getTabIconData(context));
  }

  Widget getTabItemSelectedIcon(BuildContext context) {
    return _getTabIcon(context, _getTabIconData(context), isSelected: true);
  }

  IconData _getTabIconData(BuildContext context) {
    return switch (this) {
      TabItem.home => AppPlatformIcons.platformIcons(context).home,
      TabItem.profile =>
        AppPlatformIcons.platformIcons(context).accountCircleSolid,
      TabItem.settings => AppPlatformIcons.platformIcons(context).settingsSolid,
    };
  }

  Widget _getTabIcon(
    BuildContext context,
    IconData? icon, {
    bool isSelected = false,
  }) {
    return Icon(
      icon,
      size: Sizes.navBarIconR22,
      color: isSelected ? Theme.of(context).colorScheme.primary : null,
    );
  }

  String getTabItemLabel(BuildContext context) {
    return switch (this) {
      TabItem.home => S.of(context).home,
      TabItem.profile => S.of(context).myProfile,
      TabItem.settings => S.of(context).settings,
    };
  }
}
