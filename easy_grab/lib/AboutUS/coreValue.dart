import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class CoreValuesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 900 ? 3 : screenWidth > 600 ? 2 : 1;
    double cardWidth = screenWidth > 900 ? 300 : screenWidth > 600 ? 350 : screenWidth * 0.9;
    
    return Container(color: MyColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Our Core Values',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            LayoutBuilder(
              builder: (context, constraints) {
                return Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    _buildValueCard(Icons.public, 'Global Reach',
                        'Connecting businesses worldwide with seamless logistics solutions and international expertise.', cardWidth),
                    _buildValueCard(Icons.eco, 'Sustainability',
                        'Committed to environmental responsibility and sustainable business practices.', cardWidth),
                    _buildValueCard(Icons.security, 'Security',
                        'Ensuring the safety and security of every shipment with advanced tracking systems.', cardWidth),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildValueCard(IconData icon, String title, String description, double width) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: width,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 40),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
