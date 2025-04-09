import 'package:flutter/material.dart';

class LocationSection extends StatefulWidget {
  @override
  _LocationSectionState createState() => _LocationSectionState();
}

class _LocationSectionState extends State<LocationSection> {
  String selectedLocation = "Dubai"; // Default location

  final List<String> locations = [
    "Dubai",
    "Abu Dhabi",
    "Sharjah",
    "Ajman",
    "Ras Al Khaimah",
    "Fujairah"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Locations",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Choose a location to find services available near you.",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedLocation,
                isExpanded: true,
                icon: Icon(Icons.arrow_drop_down),
                style: TextStyle(fontSize: 16, color: Colors.black),
                items: locations.map((location) {
                  return DropdownMenuItem<String>(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedLocation = newValue!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
