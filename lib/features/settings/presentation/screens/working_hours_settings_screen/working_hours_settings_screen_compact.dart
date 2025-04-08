import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

import '../../../../../core/presentation/screens/nested_screen_scaffold.dart';
import '../../../../../core/presentation/styles/styles.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../generated/l10n.dart';
import '../../providers/update_work_hours_provider.dart';

class WorkingHoursSettingsScreenCompact extends ConsumerStatefulWidget {
  const WorkingHoursSettingsScreenCompact({super.key});

  @override
  WorkingHoursSettingsScreenCompactState createState() =>
      WorkingHoursSettingsScreenCompactState();
}

class WorkingHoursSettingsScreenCompactState
    extends ConsumerState<WorkingHoursSettingsScreenCompact> {
  final Map<String, bool> _selectedDays = {
    'Mon': false,
    'Tue': false,
    'Wed': false,
    'Thu': false,
    'Fri': false,
    'Sat': false,
    'Sun': false,
  };

  final Map<String, TimeOfDay?> _startTimes = {};
  final Map<String, TimeOfDay?> _endTimes = {};

  String _currentTimeZone = 'Loading...';

  @override
  void initState() {
    super.initState();
    _loadTimeZone();
    _loadWorkHours();
  }

  Future<void> _loadTimeZone() async {
    final tz = await FlutterTimezone.getLocalTimezone();
    setState(() {
      _currentTimeZone = tz;
    });
  }

  // Load work hours using the loadWorkHours method from the provider
  Future<void> _loadWorkHours() async {
    final workHours =
        await ref.read(updateWorkHoursStateProvider.notifier).loadWorkHours();

    if (workHours != null) {
      setState(() {
        _selectedDays.addAll(workHours.selectedDays);
        _startTimes.addAll(workHours.startTimes);
        _endTimes.addAll(workHours.endTimes);
      });
    } else {
      // No data found, set default working hours: Mon-Fri, 9 AM to 5 PM
      const defaultStart = TimeOfDay(hour: 9, minute: 0);
      const defaultEnd = TimeOfDay(hour: 17, minute: 0);
      setState(() {
        for (final day in ['Mon', 'Tue', 'Wed', 'Thu', 'Fri']) {
          _selectedDays[day] = true;
          _startTimes[day] = defaultStart;
          _endTimes[day] = defaultEnd;
        }
      });
    }
  }

  Future<void> _selectTime(
      BuildContext context,
      String day,
      bool isStartTime,
      ) async {
    // Use the already selected time if available, otherwise default to current time
    final initialTime = isStartTime
        ? (_startTimes[day] ?? TimeOfDay.now())
        : (_endTimes[day] ?? TimeOfDay.now());

    final picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (picked != null) {
      setState(() {
        if (isStartTime) {
          _startTimes[day] = picked;
        } else {
          _endTimes[day] = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.easyListen(updateWorkHoursStateProvider);

    return NestedScreenScaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Sizes.screenPaddingV16,
                  horizontal: Sizes.screenPaddingH28,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).working_hours,
                          style: TextStyles.f18(context),
                        ),
                        const SizedBox(height: Sizes.marginV12),
                        Text('Timezone: $_currentTimeZone'),
                        const SizedBox(height: Sizes.marginV12),
                        ..._selectedDays.keys.map((day) {
                          final start = _startTimes[day];
                          final end = _endTimes[day];

                          return Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: _selectedDays[day],
                                    onChanged: (value) {
                                      setState(() =>
                                          _selectedDays[day] = value ?? false,);
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                  Text(day,
                                      style: const TextStyle(fontSize: 16),),
                                  const Spacer(),
                                  if (_selectedDays[day]!) ...[
                                    TextButton(
                                      onPressed: () =>
                                          _selectTime(context, day, true),
                                      child: Text(
                                        start != null
                                            ? start.format(context)
                                            : 'Start',
                                      ),
                                    ),
                                    const Text('–'),
                                    TextButton(
                                      onPressed: () =>
                                          _selectTime(context, day, false),
                                      child: Text(
                                        end != null
                                            ? end.format(context)
                                            : 'End',
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                              if (_selectedDays[day]!)
                                const Divider(height: 1, thickness: 1),
                              // Only show divider if day is selected
                            ],
                          );
                        }),
                      ],
                    ),
                    const SizedBox(height: Sizes.marginV20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          final workHoursStateNotifier =
                              ref.read(updateWorkHoursStateProvider.notifier);
                          workHoursStateNotifier.updateWorkHours(
                            selectedDays: _selectedDays,
                            startTimes: _startTimes,
                            endTimes: _endTimes,
                            timeZone: _currentTimeZone,
                          );
                        },
                        child: const Text('Save Working Hours'),
                      ),
                    ),
                    const SizedBox(height: Sizes.marginH4),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
