import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PartnerWithUsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildHeader(),
          SizedBox(height: 20),
          _buildDescription(),
          SizedBox(height: 20),
          _buildTermsAndConditions(screenWidth),
        ],
      ),
    );
  }

  // 📌 Header Section
  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          "Partner with EasyGrab Delivery Services",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        SizedBox(height: 10),
        Text(
          "Join forces with EasyGrab to connect professional delivery drivers with opportunities. "
          "We're looking for recruitment agencies that share our commitment to excellence and professionalism.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ],
    );
  }

  // 📌 Description Section
  Widget _buildDescription() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: _boxDecoration(),
      child: Text(
        "If your agency is interested in working with EasyGrab Delivery Services to hire professional and qualified "
        "delivery drivers of the mentioned standards, you are more than welcome to contact us. As the delivery industry grows, "
        "there must be mutual benefits on both ends for the companies in the middle to succeed.\n\n"
        "There are certain terms and conditions that you must follow:",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }

  // 📌 Terms and Conditions Grid
  Widget _buildTermsAndConditions(double screenWidth) {
    List<Map<String, dynamic>> terms = [
      {"icon": FontAwesomeIcons.fileAlt, "title": "Documentation", "desc": "Passport, medical, license, and other documents must be verified for visa purposes."},
      {"icon": FontAwesomeIcons.balanceScale, "title": "Legal Compliance", "desc": "Recruitment must comply with UAE labor laws and regulations."},
      {"icon": FontAwesomeIcons.dollarSign, "title": "Payment Terms", "desc": "Incentives are paid only for successful recruitment. No charges for unsuccessful hires."},
      {"icon": FontAwesomeIcons.sync, "title": "Replacement Policy", "desc": "Free replacements for drivers who resign or are terminated within initial months."},
      {"icon": FontAwesomeIcons.userSecret, "title": "Confidentiality", "desc": "All candidate and company-related information must be kept strictly confidential."},
      {"icon": FontAwesomeIcons.handshake, "title": "Exclusivity", "desc": "Candidates submitted to EasyGrab should not be presented to other companies simultaneously."},
    ];

    return Container(
      padding: EdgeInsets.all(20),
      decoration: _boxDecoration(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth > 800;
          return Wrap(
            spacing: 20,
            runSpacing: 10,
            children: terms
                .map((item) => SizedBox(
                      width: isWideScreen ? (screenWidth / 3) - 30 : screenWidth - 40,
                      child: _infoCard(item["icon"], item["title"], item["desc"]),
                    ))
                .toList(),
          );
        },
      ),
    );
  }

  // 📌 Info Card
  Widget _infoCard(IconData icon, String title, String description) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: _cardDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: Colors.black87),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(description, style: TextStyle(fontSize: 14, color: Colors.black87)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 📌 Box Decorations
  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)],
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 3, spreadRadius: 1)],
    );
  }
}
