import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Adjust crossAxisCount based on screen width
    int crossAxisCount = screenWidth > 900
        ? 4
        : screenWidth > 600
            ? 2
            : 1;

    return Container(color: MyColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildStatCard(Icons.group, "25,000+", "Active Clients"),
                _buildStatCard(Icons.local_shipping, "1.2M+", "Packages Delivered"),
                _buildStatCard(Icons.public, "150+", "Countries Served"),
                _buildStatCard(Icons.sentiment_satisfied_alt, "98%", "Customer Satisfaction"),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildStatCard(IconData icon, String value, String label) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.orange),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
