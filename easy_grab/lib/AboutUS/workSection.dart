import 'package:flutter/material.dart';

class AboutCompanySectionWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Section Title
          Text(
            "About Company",
            style: TextStyle(
              fontSize: screenWidth > 800 ? 28 : 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Delivering excellence through innovative transportation solutions",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth > 800 ? 16 : 14,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 20),

          // Responsive Two Column Layout
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                // Desktop/Web Layout (Two Columns)
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: _buildWhoWeAreCard()),
                    SizedBox(width: 20),
                    Expanded(child: _buildWhatWeDoCard()),
                  ],
                );
              } else {
                // Mobile/Tablet Layout (Stacked)
                return Column(
                  children: [
                    _buildWhoWeAreCard(),
                    SizedBox(height: 20),
                    _buildWhatWeDoCard(),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  // Who We Are Card
  Widget _buildWhoWeAreCard() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardTitle("Who We Are?"),
          SizedBox(height: 10),
          _infoCard("EasyGrabUAE is a company that is based in UAE, the primary business of the company is to supply vehicles and drivers to different companies which require transportation services."),
          _highlightCard("Although we are a relatively young firm in Dubai, our team has professionals with more than sixteen years of experience in business within various Southeast Asian countries, Middle Eastern countries, and beyond."),
          _infoCard("We’ve redefined our tactic to prioritize the hospitality, logistics, and transportation sectors. Our advanced tracking systems ensure efficient operations and complete transparency."),
          SizedBox(height: 10),
          Row(
            children: [
              _smallStatCard("16+", "Years Experience"),
              SizedBox(width: 10),
              _smallStatCard("24/7", "Support Available"),
            ],
          ),
          SizedBox(height: 10),
          _certifiedButton(),
        ],
      ),
    );
  }

  // What We Do Card
  Widget _buildWhatWeDoCard() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cardTitle("What We Do?"),
          SizedBox(height: 10),
          _listTile("Provide licensed delivery riders and registered vehicles for businesses"),
          _listTile("Serve various sectors including food delivery, e-commerce, courier services, and logistics"),
          _listTile("Specialize in corporate partnerships and bulk vehicle services"),
         _listTile("Offer real-time tracking capabilities and guaranteed on-time deliveries"),
          _listTile("Implement cost-effective solutions for business transportation needs"),
          _listTile("Uses smart technology for prompt, accurate service."),
          _listTile("Offer real-time tracking capabilities and guaranteed on-time deliveries"),
      
        ],
      ),
    );
  }

  // Title for Cards
  Widget _cardTitle(String title) {
    return Row(
      children: [
        Icon(Icons.info, size: 20, color: Colors.black),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // Informational Card
  Widget _infoCard(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }

  // Highlighted Card (For Emphasis)
  Widget _highlightCard(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border(left: BorderSide(color: Colors.blue, width: 3)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: Colors.black87),
      ),
    );
  }

  // Small Statistics Card
  Widget _smallStatCard(String title, String subtitle) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

  // Certified Operations Button
  Widget _certifiedButton() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        "🔵 Licensed & Certified Operations",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  // List Tile for "What We Do"
  Widget _listTile(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.black, size: 18),
          SizedBox(width: 8),
          Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
        ],
      ),
    );
  }

  // Box Decoration for Cards
  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 5,
          spreadRadius: 1,
        ),
      ],
    );
  }
}
