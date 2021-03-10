import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    bool locationEnabled = await Geolocator.isLocationServiceEnabled();
    if (locationEnabled) {
      Position location = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = location.latitude;
      longitude = location.longitude;
    } else {}
  }
}
