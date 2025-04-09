import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: width * 0.05),
      color: Colors.blueGrey[900], // Background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Us",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "If you have further inquiries, please feel free to contact us through any of the following channels:",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          SizedBox(height: 20),
          
          // Responsive Row for Contact Details
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                // Web / Tablet Layout
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    contactItem(FontAwesomeIcons.envelope, "Email", "info.easygrabcorporate@gmail.com"),
                    contactItem(FontAwesomeIcons.phone, "Phone", "24/7 Customer Support"),
                    socialMediaIcons(),
                  ],
                );
              } else {
                // Mobile Layout (Stacked)
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    contactItem(FontAwesomeIcons.envelope, "Email", "info.easygrabcorporate@gmail.com"),
                    SizedBox(height: 10),
                    contactItem(FontAwesomeIcons.phone, "Phone", "24/7 Customer Support"),
                    SizedBox(height: 20),
                    socialMediaIcons(),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  // Contact Info Item
  Widget contactItem(IconData icon, String title, String subtitle) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 20),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ],
    );
  }

  // Social Media Icons Row
  Widget socialMediaIcons() {
    return Row(
      children: [
        Text("Social Media", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        SizedBox(width: 10),
        Icon(FontAwesomeIcons.globe, color: Colors.white, size: 20),
        SizedBox(width: 10),
        Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 20),
        SizedBox(width: 10),
        Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 20),
        SizedBox(width: 10),
        Icon(FontAwesomeIcons.linkedin, color: Colors.white, size: 20),
      ],
    );
  }
}
