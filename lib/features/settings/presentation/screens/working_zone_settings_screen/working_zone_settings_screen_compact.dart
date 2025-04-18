import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire_plus/geoflutterfire_plus.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/presentation/screens/nested_screen_scaffold.dart';
import '../../../../../core/presentation/styles/styles.dart';
import '../../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../../generated/l10n.dart';
import '../../providers/update_work_zone_provider.dart';
import '../location_picker/location_picker_screen.dart';

class WorkingZoneSettingsScreenCompact extends ConsumerStatefulWidget {
  const WorkingZoneSettingsScreenCompact({super.key});

  @override
  ConsumerState<WorkingZoneSettingsScreenCompact> createState() =>
      _WorkingZoneSettingsScreenCompactState();
}

class _WorkingZoneSettingsScreenCompactState
    extends ConsumerState<WorkingZoneSettingsScreenCompact> {
  LatLng? _centerLocation;
  double _radiusKm = 5; // default radius

  Future<void> _selectLocation() async {
    // Navigate to a location picker (you can build or use a package like `google_maps_place_picker`)
    final pickedLocation = await Navigator.push<LatLng>(
      context,
      MaterialPageRoute(
        builder: (_) => const LocationPickerScreen(),
      ),
    );

    if (pickedLocation != null) {
      setState(() => _centerLocation = pickedLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return NestedScreenScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.screenPaddingV20,
          horizontal: Sizes.screenPaddingH36,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).working_zone, style: TextStyles.f18(context)),
            const SizedBox(height: Sizes.marginV20),
            Text(S.of(context).operating_region_center),
            ElevatedButton(
              onPressed: _selectLocation,
              child: Text(
                _centerLocation != null
                    ? 'Lat: ${_centerLocation!.latitude}, Lng: ${_centerLocation!.longitude}'
                    : S.of(context).set_location,
              ),
            ),
            const SizedBox(height: Sizes.marginV20),
            Text(S.of(context).operating_radius_km),
            Slider(
              value: _radiusKm,
              min: 1,
              max: 50,
              divisions: 49,
              label: '${_radiusKm.toStringAsFixed(1)} km',
              onChanged: (value) {
                setState(() {
                  _radiusKm = value;
                });
              },
            ),
            const SizedBox(height: Sizes.marginV20),
            ElevatedButton(
              onPressed: () {
                if (_centerLocation != null) {
                  final geoPoint = GeoFirePoint(GeoPoint(_centerLocation!.latitude, _centerLocation!.longitude));

                  // Save the working zone via provider or API
                  ref.read(updateWorkZoneStateProvider.notifier).updateWorkZone(
                    center: geoPoint,
                    radiusKm: _radiusKm,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(S.of(context).please_select_location)),
                  );
                }
              },
              child: Text(S.of(context).save_working_zone),
            ),
          ],
        ),
      ),
    );
  }
}
