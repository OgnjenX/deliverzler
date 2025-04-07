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
        // Populate the fields with the fetched work hours
        _selectedDays.addAll(workHours.selectedDays);
        _startTimes.addAll(workHours.startTimes);
        _endTimes.addAll(workHours.endTimes);
      });
    }
  }

  Future<void> _selectTime(
    BuildContext context,
    String day,
    bool isStartTime,
  ) async {
    final initialTime = TimeOfDay.now();
    final picked =
        await showTimePicker(context: context, initialTime: initialTime);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.screenPaddingV20,
            horizontal: Sizes.screenPaddingH36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).working_hours, style: TextStyles.f18(context)),
              const SizedBox(height: Sizes.marginV20),
              Text('Timezone: $_currentTimeZone'),
              const SizedBox(height: Sizes.marginV20),
              ..._selectedDays.keys.map((day) {
                final start = _startTimes[day];
                final end = _endTimes[day];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckboxListTile(
                      title: Text(day),
                      value: _selectedDays[day],
                      onChanged: (value) {
                        setState(() => _selectedDays[day] = value ?? false);
                      },
                    ),
                    if (_selectedDays[day]!)
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 16),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () => _selectTime(context, day, true),
                              child: Text(
                                start != null
                                    ? 'From: ${start.format(context)}'
                                    : 'Select Start',
                              ),
                            ),
                            const SizedBox(width: 16),
                            TextButton(
                              onPressed: () => _selectTime(context, day, false),
                              child: Text(
                                end != null
                                    ? 'To: ${end.format(context)}'
                                    : 'Select End',
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                );
              }),
              const SizedBox(height: Sizes.marginV20),
              ElevatedButton(
                onPressed: () {
                  // Trigger the work hours update when the button is pressed
                  final workHoursStateNotifier =
                      ref.read(updateWorkHoursStateProvider.notifier);

                  // Call updateWorkHours with the selected data
                  workHoursStateNotifier.updateWorkHours(
                    selectedDays: _selectedDays,
                    startTimes: _startTimes,
                    endTimes: _endTimes,
                    timeZone: _currentTimeZone,
                  );
                },
                child: const Text('Save Working Hours'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
