import 'package:flutter/material.dart';

import '../../../../../core/presentation/widgets/responsive_widgets/responsive_layouts.dart';
import 'working_hours_settings_screen_compact.dart';

class WorkingHoursSettingsScreen extends StatelessWidget {
  const WorkingHoursSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowClassLayout(
      compact: (_) => OrientationLayout(
        portrait: (_) => const WorkingHoursSettingsScreenCompact(),
      ),
    );
  }
}
