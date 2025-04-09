


import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class ShippingNeedsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(300, 0, 300, 0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              'Your shipping needs, within reach',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconText(Icons.percent, "Get Rates", () {
                  print("Get Rates clicked");
                }),
                _buildDivider(),
                _buildIconText(Icons.search, "Track", () {
                  print("Track clicked");
                }),
                _buildDivider(),
                _buildIconText(Icons.send, "Send Shipment", () {
                  print("Send Shipment clicked");
                }),
                _buildDivider(),
                _buildIconText(Icons.account_circle, "Corporate Account", () {
                  print("Corporate Account clicked");
                }),
                _buildDivider(),
                _buildIconText(Icons.location_pin, "Find Us", () {
                  print("Find Us clicked");
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent, // Ensures taps work
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
          //  borderRadius: BorderRadius.circular(20),
            splashColor: Colors.blue.withOpacity(0.2),
            child: Column(
              children: [
                Icon(icon, size: 30, color: MyColors.primaryBlue),
                SizedBox(height: 5),
                Text(
                  text,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 40,
      width: 1,
      color: MyColors.blackColor,
    );
  }
}






