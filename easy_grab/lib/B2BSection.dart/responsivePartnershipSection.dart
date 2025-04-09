import 'package:flutter/material.dart';

class PartnerSectionNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth > 1200 ? 100 : screenWidth > 800 ? 50 : 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Partnering with EasyGrab",
            style: TextStyle(
              fontSize: screenWidth > 600 ? 24 : 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "At EasyGrab we respect professionalism and performance as well as the customer-service relationship. "
            "In joining with us, vehicle suppliers are given an effective delivery network, strong payment systems, and steady relationship building.",
            style: TextStyle(
              fontSize: screenWidth > 600 ? 16 : 14,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Why Partner With Us?",
                  style: TextStyle(
                    fontSize: screenWidth > 600 ? 18 : 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                _buildBulletPoint("Effective delivery network"),
                _buildBulletPoint("Strong payment systems"),
                _buildBulletPoint("Steady relationship building"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check, color: Colors.black, size: 18),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
