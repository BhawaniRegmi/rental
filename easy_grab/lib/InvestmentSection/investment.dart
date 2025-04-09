import 'package:flutter/material.dart';


class InvestmentOpportunities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Investment Opportunities",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image.asset('assets/image/i1.png', width: screenWidth * 0.6),
            SizedBox(height: 10),
            Text(
              "EasyGrab is involved in the continuous development of new services as well as the improvement of the customer experience. To achieve these goals, we are seeking strategic investments to support the following initiatives:",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            _buildInvestmentOptions(context),
            SizedBox(height: 30),
            _buildInvestmentValueProposition(),
            SizedBox(height: 30),
            _buildInvestmentInquiryForm(context),
          ],
        ),
      ),
    );
  }

  Widget _buildInvestmentOptions(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        _investmentCard('assets/image/i2.png', 'Fleet Expansion',
            "Adding more vehicles to satisfy the higher demand and to minimize the period of time that delivery takes."),
        _investmentCard('assets/image/t.png', 'Technology Enhancement',
            "Upgrading our mobile application and backend systems in-order to improve user experience and operational efficiency."),
        _investmentCard('assets/image/i3.png', 'Driver Training Programs',
            "Developing and establishing elaborate training for drivers, so that they can assess the dangers and serve efficiently safely."),
        _investmentCard('assets/image/i4.png', 'Market Expansion',
            "Expanding our current and available services to other territories to increase market reach and address a larger client."),
      ],
    );
  }

  Widget _investmentCard(String image, String title, String description) {
    return SizedBox(
      width: 250,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(image, height: 80),
              SizedBox(height: 10),
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(description, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInvestmentValueProposition() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text("Investment Value Proposition", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            "The acquisition of shares in EasyGrab offers an opportunity to be an investor in a growing company in this fast-growing sector of logistics/transportation. Our principal objective is to create value for our investors with sustainable growth and innovation. For more detailed information or to discuss potential investment opportunities, please fill out the following form.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildInvestmentInquiryForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        children: [
          Text("Investment Inquiry Form", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          _buildTextField("Vendor Name"),
          _buildTextField("Legal Name of Business"),
          _buildTextField("Address"),
          _buildTextField("Email Address"),
          _buildTextField("Phone Number"),
          _buildTextField("Business License No."),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Text("Submit")),
          ),
          SizedBox(height: 10),
          Text("All information provided will be treated with strict confidentiality.",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  // Widget _buildTextField(String label) {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 10),
  //     child: TextField(
  //       decoration: InputDecoration(
  //         labelText: label,
  //         border: OutlineInputBorder(),
  //       ),
  //     ),
  //   );
  // }


Widget _buildTextField(String label) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 300, // Adjust the width as needed
        child: TextField(
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              color: Colors.grey[800],
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
          ),
          cursorColor: Colors.black,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
}
