import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PartnershipTermsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWideScreen = screenWidth > 800;

    return Container(color: MyColors.whiteColor,
      padding: EdgeInsets.symmetric(horizontal: isWideScreen ? 40 : 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 20),
          _buildTermItem(FontAwesomeIcons.dollarSign, "Pricing and Payment",
              "The costs of vehicle provision will be determined as agreed with the supplier and EasyGrab. Our transparent pricing structure ensures fair compensation for all parties involved while maintaining competitive market rates."),
          SizedBox(height: 20),
          _buildDeliveryMaintenance(),
          SizedBox(height: 20),
          _buildTermItem(FontAwesomeIcons.lock, "Confidentiality",
              "All provisions relating to the terms of this agreement and the parties' identity are subject to strict confidentiality. Any disclosure of this information requires prior written consent from all parties concerned. We take data protection and privacy seriously."),
          SizedBox(height: 20),
          _buildTermItem(FontAwesomeIcons.gavel, "Governing Law and Disputes",
              "This arrangement shall be regulated through the laws of the United Arab Emirates. The parties agree to utilize settlement or arbitration in accordance with the UAE legal procedural law to resolve any arising disagreements. Our commitment to fair and transparent dispute resolution ensures a stable partnership environment."),
        ],
      ),
    );
  }

  // 📌 Header Section
  Widget _buildHeader() {
    return Text(
      "Partnership Terms",
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }

  // 📌 Term Item Widget
  Widget _buildTermItem(IconData icon, String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 22, color: Colors.black87),
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
    );
  }

  // 📌 Delivery & Maintenance Section
  Widget _buildDeliveryMaintenance() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(FontAwesomeIcons.truck, size: 22, color: Colors.black87),
              SizedBox(width: 10),
              Text("Delivery and Maintenance", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          _infoCard("Delivery Timelines",
              "Suppliers are required to ensure that vehicles are delivered to EasyGrab’s strategic centres at the agreed period. Punctuality and reliability are key factors in our partnership success."),
          SizedBox(height: 10),
          _infoCard("Maintenance Responsibilities",
              "Cars must be provided in perfect running order. The supplier is responsible for providing maintenance and repair services throughout the agreement period to ensure continuous vehicle operation."),
        ],
      ),
    );
  }

  // 📌 Info Card for Subsections
  Widget _infoCard(String title, String description) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(description, style: TextStyle(fontSize: 13, color: Colors.black87)),
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
}
