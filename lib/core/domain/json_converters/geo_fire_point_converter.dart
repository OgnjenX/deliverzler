import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire_plus/geoflutterfire_plus.dart';
import 'package:json_annotation/json_annotation.dart';

class GeoFirePointConverter implements JsonConverter<GeoFirePoint, Map<String, dynamic>> {
  const GeoFirePointConverter();

  @override
  GeoFirePoint fromJson(Map<String, dynamic> json) {
    final geoPoint = json['geopoint'] as GeoPoint;
    return GeoFirePoint(geoPoint);
  }

  @override
  Map<String, dynamic> toJson(GeoFirePoint point) => point.data;
}
