
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          zoom: 20,
          bearing: 0,
          tilt: 15,
          target: LatLng(23.90604480483824, 90.219439061742),
        ),
        onTap: (LatLng position) {
          print(position);
        },
        onLongPress: (LatLng position) {
          print(position);
        },
        onCameraMove: (position) {
          print(position.target);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: true,
        compassEnabled: false,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}