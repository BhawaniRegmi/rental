import 'package:flutter/material.dart';

class WhyChooseUsSection extends StatelessWidget {
  final List<FeatureItem> features = [
    FeatureItem("Fast & Reliable", "Speedy deliveries across UAE with guaranteed reliability", "assets/image/t1.png"),
    FeatureItem("Affordable Pricing", "Competitive rates for all your delivery needs", "assets/image/t2.png"),
    FeatureItem("Advanced Tracking", "Real-time updates on your shipment status", "assets/image/t3.png"),
    FeatureItem("Secure & Trusted", "Licensed and professional delivery team", "assets/image/t4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Adjust grid layout based on screen width
    int crossAxisCount = screenWidth > 1200
        ? 4
        : screenWidth > 800
            ? 2
            : 1;

    return Container(
      color: Color(0xFFEAF2FF), // Light blue background
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Section Title
          Text(
            "Why Choose Us?",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            "Experience the difference with our premium delivery service",
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 32),

          // Feature Grid
          LayoutBuilder(
            builder: (context, constraints) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: NeverScrollableScrollPhysics(),
                children: features.map((feature) => _buildFeatureCard(feature)).toList(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(FeatureItem feature) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Image.asset(feature.imagePath, width: 60, height: 60), // Use asset images
        ),
        SizedBox(height: 12),
        Text(feature.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 6),
        Text(feature.description, textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
      ],
    );
  }
}

// Feature Model
class FeatureItem {
  final String title;
  final String description;
  final String imagePath;
  FeatureItem(this.title, this.description, this.imagePath);
}
