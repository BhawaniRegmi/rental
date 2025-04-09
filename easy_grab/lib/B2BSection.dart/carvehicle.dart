import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VehicleRequirementsSection extends StatefulWidget {
  @override
  _VehicleRequirementsSectionState createState() => _VehicleRequirementsSectionState();
}

class _VehicleRequirementsSectionState extends State<VehicleRequirementsSection> {
  bool isCarSelected = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWideScreen = screenWidth > 800;

    return Column(
      children: [
        _buildTabBar(),
        SizedBox(height: 10),
        _buildContent(screenWidth, isWideScreen),
      ],
    );
  }

  // 📌 Tab Bar for Cars & Motorbikes
  Widget _buildTabBar() {
    return Container(color: MyColors.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _tabItem("Cars", FontAwesomeIcons.car, isCarSelected, () {
            setState(() => isCarSelected = true);
          }),
          _tabItem("Motorbikes", FontAwesomeIcons.motorcycle, !isCarSelected, () {
            setState(() => isCarSelected = false);
          }),
          //BikeRequirementsSection()
        ],
      ),
    );
  }

  Widget _tabItem(String title, IconData icon, bool isSelected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Row(
          children: [
            Icon(icon, size: 18, color: isSelected ? Colors.black : Colors.grey),
            SizedBox(width: 5),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 📌 Main Content Based on Selection
  Widget _buildContent(double screenWidth, bool isWideScreen) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle("General Requirements"),
          SizedBox(height: 10),
          _buildGeneralRequirements(),
          SizedBox(height: 20),
          _buildSectionTitle("Preferred Models"),
          SizedBox(height: 10),
          _buildPreferredModels(isWideScreen),
          SizedBox(height: 20),
          _buildSectionTitle("Service Categories"),
          SizedBox(height: 10),
          _buildServiceCategories(screenWidth, isWideScreen),
        ],
      ),
    );
  }

  // 📌 Section Title
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  // 📌 General Requirements
  Widget _buildGeneralRequirements() {
    List<String> requirements = isCarSelected
        ? [
            "Clean four-door cars in perfect running conditions",
            "No signs of body harm including scratches or bumps",
            "Socially and legally insurable",
            "Registered in accordance with UAE laws",
            "Car models for sale should not be older than a 16-year period from the time of selling.",
          ]
        : [
            "Motorbikes must be in excellent working condition",
            "No body damage, dents, or excessive wear",
            "Must be insured and road legal",
            "Registered as per UAE transport regulations",
            "Helmet and safety gear are mandatory for riders.",
          ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: requirements.map((text) => _requirementItem(text)).toList(),
    );
  }

  Widget _requirementItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Icon(FontAwesomeIcons.check, size: 16, color: Colors.green),
          SizedBox(width: 8),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 14, color: Colors.black87)),
          ),
        ],
      ),
    );
  }

  // 📌 Preferred Models
  Widget _buildPreferredModels(bool isWideScreen) {
    List<String> carModels = ["Toyota Yaris", "Nissan Sunny", "Hyundai Accent", "Kia           Rio"];
    List<String> bikeModels = ["Honda CB 500X", "Yamaha MT-07", "Suzuki GSX-R750", "KTM Duke 390"];

    List<String> models = isCarSelected ? carModels : bikeModels;

    return Wrap(
      spacing: 15,
      runSpacing: 10,
      children: models
          .map((model) => _infoCard(FontAwesomeIcons.car, model, isWideScreen ? 150 : double.infinity))
          .toList(),
    );
  }

  // 📌 Service Categories
  Widget _buildServiceCategories(double screenWidth, bool isWideScreen) {
    List<Map<String, dynamic>> categories = [
      {"icon": FontAwesomeIcons.utensils, "title": "Food Delivery", "desc": "Temperature-controlled food transport services"},
      {"icon": FontAwesomeIcons.shoppingBasket, "title": "Grocery Transport", "desc": "Fresh and packaged grocery delivery"},
      {"icon": FontAwesomeIcons.box, "title": "Parcel Delivery", "desc": "Safe and secure parcel transportation"},
    ];

    return Wrap(
      spacing: 20,
      runSpacing: 10,
      children: categories
          .map((item) => _infoCard(item["icon"], item["title"], screenWidth > 800 ? (screenWidth / 3) - 30 : double.infinity, item["desc"]))
          .toList(),
    );
  }

  // 📌 Info Card
  Widget _infoCard(IconData icon, String title, double width, [String? desc]) {
    return SizedBox(
      width: width,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: _cardDecoration(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 22, color: Colors.black87),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  if (desc != null) ...[
                    SizedBox(height: 5),
                    Text(desc, style: TextStyle(fontSize: 14, color: Colors.black87)),
                  ],
                ],
              ),
            ),
          ],
        ),
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











class BikeRequirementsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWideScreen = screenWidth > 800;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: isWideScreen ? 40 : 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 20),
          _buildMainContent(isWideScreen),
          SizedBox(height: 20),
          _buildPreferredModels(isWideScreen),
          SizedBox(height: 20),
          _buildImportantNotes(),
        ],
      ),
    );
  }

  // 📌 Header Section
  Widget _buildHeader() {
    return Text(
      "Motorbike Requirements for Delivery Services",
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }

  // 📌 Main Content (Specifications, Conditions, Legal Requirements & Equipment)
  Widget _buildMainContent(bool isWideScreen) {
    return Flex(
      direction: isWideScreen ? Axis.horizontal : Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              _requirementItem(FontAwesomeIcons.motorcycle, "Engine Specifications",
                  "Optimal delivery performance with engine sizes between 100cc and 150cc"),
              _requirementItem(FontAwesomeIcons.wrench, "Vehicle Condition",
                  "Bikes must be in good working order without visible wear or damage"),
              _requirementItem(FontAwesomeIcons.shieldAlt, "Legal Requirements",
                  "Valid registration and delivery insurance documentation required"),
            ],
          ),
        ),
        if (isWideScreen) SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: _requiredEquipment(),
        ),
      ],
    );
  }

  // 📌 Requirement Item Widget
  Widget _requirementItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
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
      ),
    );
  }

  // 📌 Required Equipment Box
  Widget _requiredEquipment() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Required Equipment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(FontAwesomeIcons.boxOpen, size: 28, color: Colors.black87),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Top Box", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text("Secure delivery box must be properly installed", style: TextStyle(fontSize: 14, color: Colors.black87)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 📌 Preferred Models Section
  Widget _buildPreferredModels(bool isWideScreen) {
    List<String> bikeModels = [
      "Honda CG 125",
      "Bajaj Platina 110",
      "Yamaha YBR 125",
      "Hero Splendor Plus",
      "Bajaj Pulsar 150",
      "Suzuki Gixxer 150",
    ];

    return Container(
      padding: EdgeInsets.all(15),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Preferred Models", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Wrap(
            spacing: 20,
            runSpacing: 10,
            children: bikeModels.map((model) => _preferredModelItem(model, isWideScreen)).toList(),
          ),
        ],
      ),
    );
  }

  // 📌 Preferred Model Item
  Widget _preferredModelItem(String model, bool isWideScreen) {
    return SizedBox(
      width: isWideScreen ? 200 : double.infinity,
      child: Row(
        children: [
          Icon(FontAwesomeIcons.check, size: 16, color: Colors.green),
          SizedBox(width: 8),
          Text(model, style: TextStyle(fontSize: 14, color: Colors.black87)),
        ],
      ),
    );
  }

  // 📌 Important Notes Section
  Widget _buildImportantNotes() {
    List<String> notes = [
      "Regular maintenance and good working condition required",
      "Valid delivery insurance must be maintained",
      "Top box must meet safety and security standards",
    ];

    return Container(
      padding: EdgeInsets.all(15),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Important Notes", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: notes.map((note) => _importantNoteItem(note)).toList(),
          ),
        ],
      ),
    );
  }

  // 📌 Important Note Item
  Widget _importantNoteItem(String note) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Icon(FontAwesomeIcons.solidCheckCircle, size: 16, color: Colors.green),
          SizedBox(width: 8),
          Expanded(
            child: Text(note, style: TextStyle(fontSize: 14, color: Colors.black87)),
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
}
