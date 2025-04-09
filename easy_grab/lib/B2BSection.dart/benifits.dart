import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class PartnershipBenefitsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width < 768;

    return Container(color: MyColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title
            Text(
              "Partnership Benefits",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30),
      
            // Responsive Cards Layout
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                _benefitCard(Icons.local_shipping, "Vehicles Service",
                    "EasyGrab shall have provision of vehicles to be used in delivery operations with all the driver’s necessary resources to accomplish their tasks."),
                _benefitCard(Icons.badge, "Visa Support",
                    "Full visa sponsorship with hassle-free processing and renewal support."),
                _benefitCard(Icons.home, "Accommodation",
                    "Subsidized housing options available in prime locations across UAE."),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Benefit Card Widget
  Widget _benefitCard(IconData icon, String title, String description) {
    return SizedBox(
      width: 600, // Fixed width for uniformity
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 32, color: Colors.black),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
    // Benefit Card Widget
  Widget _benefitCardNew(IconData icon, String title, String description) {
    return SizedBox(
      width: 600, // Fixed width for uniformity
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 32, color: Colors.black),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
