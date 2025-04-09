import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SmartDeliverySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width < 768;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Hero Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 40),
            child: isMobile
                ? Column(
                    children: [
                      textSection(),
                      SizedBox(height: 20),
                      imageSection(),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: textSection()),
                      SizedBox(width: 40),
                      Expanded(child: imageSection()),
                    ],
                  ),
          ),

          // Features Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 20),
            child: Column(
              children: [
                Text(
                  "Powerful Features for Modern Logistics",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Our comprehensive solution provides everything you need to streamline your delivery operations",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                SizedBox(height: 30),
                featureCards(width),
              ],
            ),
          ),

          // CTA Section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 40),
            child: ctaSection(),
          ),
        ],
      ),
    );
  }

  // Hero Section Text
  Widget textSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Smart Delivery Management Solutions",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          "Optimize your logistics with real-time tracking and automation. Transform your delivery operations with our intelligent platform.",
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text("Get Started Now", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text("Watch Demo"),
            ),
          ],
        ),
      ],
    );
  }

  // Hero Section Image
  Widget imageSection() {
    return Image.network(
      "https://via.placeholder.com/400", // Replace with actual image URL
      height: 200,
      fit: BoxFit.cover,
    );
  }

  // Features Section Cards
  Widget featureCards(double width) {
    bool isMobile = width < 768;

    return isMobile
        ? Column(
            children: [
              featureCard(FontAwesomeIcons.mapMarkerAlt, "Real-time Tracking",
                  "Monitor your deliveries in real-time with precise GPS tracking and instant status updates."),
              SizedBox(height: 15),
              featureCard(FontAwesomeIcons.cogs, "Smart Automation",
                  "Automate route planning, dispatch, and delivery assignments for maximum efficiency."),
              SizedBox(height: 15),
              featureCard(FontAwesomeIcons.chartLine, "Analytics Dashboard",
                  "Gain valuable insights with comprehensive analytics and performance metrics."),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: featureCard(FontAwesomeIcons.mapMarkerAlt, "Real-time Tracking",
                    "Monitor your deliveries in real-time with precise GPS tracking and instant status updates."),
              ),
              SizedBox(width: 15),
              Expanded(
                child: featureCard(FontAwesomeIcons.cogs, "Smart Automation",
                    "Automate route planning, dispatch, and delivery assignments for maximum efficiency."),
              ),
              SizedBox(width: 15),
              Expanded(
                child: featureCard(FontAwesomeIcons.chartLine, "Analytics Dashboard",
                    "Gain valuable insights with comprehensive analytics and performance metrics."),
              ),
            ],
          );
  }

  // Individual Feature Card
  Widget featureCard(IconData icon, String title, String description) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 30, color: Colors.black),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  // Call-to-Action Section
  Widget ctaSection() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ready to Transform Your Delivery Operations?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  "Join thousands of businesses that trust our platform for their delivery management needs.",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  child: Text("Schedule a Demo"),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Image.network(
            "https://via.placeholder.com/200", // Replace with actual image URL
            height: 100,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
