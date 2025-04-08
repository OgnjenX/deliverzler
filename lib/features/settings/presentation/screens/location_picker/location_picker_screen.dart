import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../../generated/l10n.dart';

class LocationPickerScreen extends StatefulWidget {
  const LocationPickerScreen({super.key});

  @override
  State<LocationPickerScreen> createState() => _LocationPickerScreenState();
}

class _LocationPickerScreenState extends State<LocationPickerScreen> {
  GoogleMapController? _mapController;
  LatLng? _pickedLocation;
  LatLng _initialPosition = const LatLng(37.7749, -122.4194); // default to SF

  @override
  void initState() {
    super.initState();
    _setInitialPosition();
  }

  Future<void> _setInitialPosition() async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      final pos = await Geolocator.getCurrentPosition();
      setState(() {
        _initialPosition = LatLng(pos.latitude, pos.longitude);
      });
      await _mapController
          ?.animateCamera(CameraUpdate.newLatLng(_initialPosition));
    }
  }

  void _onTap(LatLng position) {
    setState(() {
      _pickedLocation = position;
    });
  }

  void _confirmLocation() {
    if (_pickedLocation != null) {
      Navigator.pop(context, _pickedLocation);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).please_select_location_by_tapping),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 14,
            ),
            onMapCreated: (controller) {
              _mapController = controller;
            },
            onTap: _onTap,
            markers: _pickedLocation != null
                ? {
                    Marker(
                      markerId: const MarkerId('picked-location'),
                      position: _pickedLocation!,
                    ),
                  }
                : {},
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: _confirmLocation,
                child: Text(S.of(context).confirm_location),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
