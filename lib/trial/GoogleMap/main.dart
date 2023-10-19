import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Map',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Map'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(35.6895, 139.6917),
            zoom: 15.0,
          ),
          markers: {
            Marker(
              markerId: MarkerId('tokyo_tower'),
              position: LatLng(35.6895, 139.6917),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(
                title: '東京タワー',
                snippet: '東京都港区芝公園4-2-8'
              ))
          },
        ),
      ),
    );
  }
}
