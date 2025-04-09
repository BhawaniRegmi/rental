import 'package:flutter/material.dart';

class Contactbanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bannerHeight = screenWidth > 800 ? 250 : 180; // Adjust height for different screens

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: bannerHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/logi.png"), // Update with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
      
          // Dark Overlay
          Container(
            width: double.infinity,
            height: bannerHeight,
            color: Colors.black.withOpacity(0.5), // Dark overlay for contrast
          ),
      
          // Text Content
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Contact",
                  style: TextStyle(
                    fontSize: screenWidth > 800 ? 40 : 28, // Adjust font size for screens
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Home ▸ Contact",
                  style: TextStyle(
                    fontSize: screenWidth > 800 ? 18 : 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
