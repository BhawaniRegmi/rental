import 'package:flutter/material.dart';

class PolicySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection("Professional Conduct", [
              _infoCard(Icons.business_center, "Professionalism",
                  "As for the conduct of the Drivers, they should be professional, courteous and respect the clients, colleagues and EasyGrab employees.",
                  color: Colors.blue[50]),
              _infoCard(Icons.cancel, "Substance Policy",
                  "Consumption of alcohol, or any other prohibited substance, or illegal substance that could in any way cause the individual to be impaired during work hours is prohibited.",
                  color: Colors.red[50]),
              _infoCard(Icons.check_circle, "Compliance",
                  "Any individual who intends to use a vehicle serving the EasyGrab platform has to follow traffic laws and regulations, safety measures as well as policies and guidelines from the company.",
                  color: Colors.green[50]),
            ], screenWidth),
      
            _buildSection("Service Quality", [
              _infoCard(Icons.access_time, "Timely Deliveries",
                  "In the job assignment details and where they operate as drivers, they must guarantee quick pickup and delivery services."),
              _infoCard(Icons.assignment_turned_in, "Responsibility",
                  "They are supposed to ensure they take particular note of the condition and stock-take number of goods they are supposed to pick up and transport safely."),
              _infoCard(Icons.report_problem, "Reporting Issues",
                  "Any damages or delays have to be communicated to the convenient EasyGrab support team for manual rectification."),
            ], screenWidth),
      
            _buildSection("Earnings and Payments", [
              _infoCard(Icons.attach_money, "Compensation Structure",
                  "They will also be paid according to the agreed remunerative structure which in most cases consists of base rates and bonus."),
              _infoCard(Icons.calendar_today, "Payment Schedule",
                  "Payments will be made as agreed with the company alongside an easily understandable breakdown of the tax or other fees as may be required by the law."),
              _infoCard(Icons.gavel, "Dispute Resolution",
                  "Concerning payments any complaint has to be made within a period of seven days from the time of receipt to facilitate an investigation process."),
            ], screenWidth),
      
            _buildSection("Termination and Suspension", [
              _infoCard(Icons.warning, "Company Rights",
                  "EasyGrab reserves the right to cancel an individual’s registration and/or suspend their driver’s license in case of violation of the Terms and Conditions or Conduct, or for flare-ups and ceaseless complaints.",
                  color: Colors.red[50]),
              _infoCard(Icons.person_off, "Voluntary Deactivation",
                  "The accounts created by the drivers can be deactivated by the drivers by giving prior notice to EasyGrab."),
            ], screenWidth),
          ],
        ),
      ),
    );
  }

  // Section Builder
  Widget _buildSection(String title, List<Widget> cards, double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              // Web Layout (Grid-like structure)
              return Wrap(
                spacing: 20,
                runSpacing: 10,
                children: cards.map((card) => SizedBox(width: (screenWidth / 3) - 30, child: card)).toList(),
              );
            } else {
              // Mobile/Tablet Layout (Stacked)
              return Column(
                children: cards.map((card) => Padding(padding: EdgeInsets.symmetric(vertical: 5), child: card)).toList(),
              );
            }
          },
        ),
      ],
    );
  }

  // Card Builder
  Widget _infoCard(IconData icon, String title, String description, {Color? color}) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)],
      ),
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
}
