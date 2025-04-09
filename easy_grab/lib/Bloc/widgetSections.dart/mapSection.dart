import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationsMapSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Row(
            children: [
              // Left Side - Locations List
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Our Locations",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      _locationTile("Dubai", "Bin Souqat Building Nad Al Hamar Road, Umm Ramool, Dubai"),
                      _locationTile("Abu Dhabi", "Some address in Abu Dhabi"),
                      _locationTile("Sharjah", "Some address in Sharjah"),
                      _locationTile("Qatar", "Some address in Qatar"),
                      _locationTile("Bahrain", "Some address in Bahrain"),
                      _locationTile("Oman", "Some address in Oman"),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              // Right Side - Map
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(25.276987, 55.296249),
                      zoom: 12,
                    ),
                    markers: {
                      Marker(
                        markerId: MarkerId('dubai'),
                        position: LatLng(25.276987, 55.296249),
                        infoWindow: InfoWindow(title: 'Dubai'),
                        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
                      ),
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _locationTile(String title, String address) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                address,
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {}, // Add navigation functionality
                child: Text(
                  "View on map",
                  style: TextStyle(color: Colors.white, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}