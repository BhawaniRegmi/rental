import 'package:flutter/material.dart';

class ResponsiveSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Determine the width for different screen sizes
    double containerWidth;
    if (screenWidth < 600) {
      // Mobile
      containerWidth = screenWidth * 0.9;
    } else if (screenWidth < 1200) {
      // Tablet
      containerWidth = screenWidth * 0.75;
    } else {
      // Web
      containerWidth = screenWidth * 0.6;
    }

    return Center(
      child: Container(
        width: containerWidth,
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.symmetric(vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              spreadRadius: 5.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                children: [
                  Icon(Icons.info),
                  SizedBox(width: 10.0),
                  Text(
                    'For Vehicles',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Want to spend some more time getting information on supplying vehicles to us? Great! Here you’ll find important information for EasyGrab vehicle suppliers. At EasyGrab we are very keen on developing long lasting and mutually beneficial relationship with dependable vehicle suppliers that have a very crucial role to play in the company’s delivery services. EasyGrab is always ready to share its opportunities with you. For your benefit, we provide here the key points of the vehicle specifications, as well as the conditions upon which we work with our partners.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
