import 'package:flutter/material.dart';

import '../../../../../core/presentation/widgets/responsive_widgets/responsive_layouts.dart';
import 'working_zone_settings_screen_compact.dart';

class WorkingZoneSettingsScreen extends StatelessWidget {
  const WorkingZoneSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowClassLayout(
      compact: (_) => OrientationLayout(
        portrait: (_) => const WorkingZoneSettingsScreenCompact(),
      ),
    );
  }
}
