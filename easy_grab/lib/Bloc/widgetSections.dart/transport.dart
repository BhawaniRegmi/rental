import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class ServiceCardsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: MyColors.whiteColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            ServiceCard1(), // First Service Card
            SizedBox(width: 16),
            ServiceCard2(), // Second Service Card
          ],
        ),
      ),
    );
  }
}

// First Service Card (Transport Vehicle Rental)
class ServiceCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(color: MyColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: (screenWidth/2)-70,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage('assets/image/transportImg.png'), // Add the image in assets
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // Dark overlay
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              
              // Content
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Title
                    Text(
                      'Transport Vehicle Rental Service',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
        
                    SizedBox(height: 10),
        
                    // Bullet Points
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        bulletPoint('Wide range of commercial vehicles available'),
                        bulletPoint('Flexible rental periods - daily, weekly, monthly'),
                        bulletPoint('24/7 maintenance and support service'),
                        bulletPoint('Competitive rates and insurance included'),
                      ],
                    ),
        
                    SizedBox(height: 20),
        
                    // Button
                    actionButton('Explore Fleet Options'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Second Service Card (B2B Partnership)
class ServiceCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(color: MyColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Container(
          width: (screenWidth/2)-70,//350
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage('assets/image/partner.png'), // Add the image in assets
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // Dark overlay
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
        
              // Content
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Title
                    Text(
                      'B2B Partnership Investment Service',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
        
                    SizedBox(height: 10),
        
                    // Bullet Points
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        bulletPoint('Strategic partnership opportunities'),
                        bulletPoint('Investment consulting and analysis'),
                        bulletPoint('Risk management solutions'),
                        bulletPoint('Long-term growth strategies'),
                      ],
                    ),
        
                    SizedBox(height: 20),
        
                    // Button
                    actionButton('Partner With Us'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Bullet Point Widget
Widget bulletPoint(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.check_circle, color: Colors.orange, size: 18),
      SizedBox(width: 8),
      Expanded(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    ],
  );
}

// Button Widget
Widget actionButton(String text) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryOrange,
        foregroundColor: MyColors.primaryBlue,
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 5),
          Icon(Icons.arrow_right_alt),
        ],
      ),
    ),
  );
}
