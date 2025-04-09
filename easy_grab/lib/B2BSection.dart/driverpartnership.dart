import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DriverPartnershipProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle("Driver Partnership Program"),

          _buildDriverResponsibilities(screenWidth),

          _sectionTitle("Technological Support"),
          _buildTechnologicalSupport(screenWidth),

          _sectionTitle("Agency Recruitment"),
          _buildAgencyRecruitment(screenWidth),
        ],
      ),
    );
  }

  // 📌 Section Title
  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  // 📌 Driver Responsibilities
  Widget _buildDriverResponsibilities(double screenWidth) {
    return Container(
      width: screenWidth,
      padding: EdgeInsets.all(20),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Driver Responsibilities",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            "Drivers are expected to manage their personal expenses, including:",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          _listItem("Daily living costs and personal maintenance"),
          _listItem("Vehicle maintenance and fuel costs"),
          _listItem("Miscellaneous charges not related to delivery tasks"),
        ],
      ),
    );
  }

  // 📌 Technological Support
  Widget _buildTechnologicalSupport(double screenWidth) {
    List<Map<String, dynamic>> supportItems = [
      {"icon": FontAwesomeIcons.truck, "title": "Delivery Operation Apps", "desc": "Complete delivery management system with order acceptance and tracking"},
      {"icon": FontAwesomeIcons.locationArrow, "title": "Navigation Systems", "desc": "Advanced GPS and route optimization technology"},
      {"icon": FontAwesomeIcons.wallet, "title": "Digital Wallets", "desc": "Secure payment processing and earnings management"},
      {"icon": FontAwesomeIcons.shieldAlt, "title": "Safety Features", "desc": "Real-time monitoring and emergency assistance"},
      {"icon": FontAwesomeIcons.headset, "title": "Support System", "desc": "24/7 customer service and driver assistance"},
      {"icon": FontAwesomeIcons.star, "title": "Rating System", "desc": "Performance tracking and reward programs"},
    ];

    return Container(
      width: screenWidth,
      padding: EdgeInsets.all(20),
      decoration: _boxDecoration(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth > 800;
          return Wrap(
            spacing: 20,
            runSpacing: 10,
            children: supportItems
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

  // 📌 Agency Recruitment Section
  Widget _buildAgencyRecruitment(double screenWidth) {
    bool isWideScreen = screenWidth > 800;
    
    return Container(
      padding: EdgeInsets.all(20),
      decoration: _boxDecoration(),
      child: isWideScreen
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _agencyInfo()),
                SizedBox(width: 20),
                Expanded(child: _agencyForm()),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _agencyInfo(),
                SizedBox(height: 20),
                _agencyForm(),
              ],
            ),
    );
  }

  // 📌 Agency Information
  Widget _agencyInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "If your agency is interested in partnering with EasyGrab Delivery Services, we welcome you to contact us. We’re looking for professional and qualified delivery drivers who meet our high standards.",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 10),
        _listItem("Access to our advanced delivery management platform"),
        _listItem("Competitive commission rates"),
        _listItem("Dedicated agency support team"),
      ],
    );
  }

  // 📌 Inquiry Form
  Widget _agencyForm() {
    return Column(
      children: [
        _textField("Agency Name"),
        _textField("Contact Email"),
        _textField("Message", maxLines: 4),
        SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 12),
            ),
            onPressed: () {},
            child: Text("Submit Inquiry", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  // 📌 Text Field
  Widget _textField(String label, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  // 📌 Info Card
  Widget _infoCard(IconData icon, String title, String description) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: _boxDecoration(),
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

  // 📌 List Item
  Widget _listItem(String text) {
    return Row(
      children: [
        Icon(Icons.check, color: Colors.green, size: 18),
        SizedBox(width: 5),
        Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
      ],
    );
  }

  // 📌 Box Decoration
  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)],
    );
  }
}
