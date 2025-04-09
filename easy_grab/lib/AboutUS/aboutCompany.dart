
import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class AboutCompanySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingHorizontal = screenWidth * 0.05;

    return Container(color: MyColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            // Responsive Layout
            LayoutBuilder(
              builder: (context, constraints) {
                bool isWideScreen = constraints.maxWidth > 800;
      
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Section - Covering 40% of the screen width
                    Container(
                      width: screenWidth * 0.40,
                      margin: EdgeInsets.only(bottom: isWideScreen ? 0 : 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          "assets/image/containerEasy.png", // Replace with your actual image asset
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: isWideScreen ? 300 : 200,
                        ),
                      ),
                    ),
                    SizedBox(width: isWideScreen ? 20 : 0),
      
                    // Text Content Section
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                  // About Company Title
            Row(
              children: [
                Icon(Icons.local_shipping, color: Colors.black),
                SizedBox(width: 8),
                Text(
                  "ABOUT COMPANY",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.2),
                ),
              ],
            ),
            SizedBox(height: 10),
                          Text(
                            "The Best Transport & Logistics Company",
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "We provide comprehensive logistics solutions with a focus on efficiency and reliability. "
                            "Our experienced team ensures your cargo reaches its destination safely and on time, "
                            "backed by decades of industry expertise.",
                            style: TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                          SizedBox(height: 20),
      
                          // Benefits Section
                          Column(
                            children: [
                              _buildBenefitRow("assets/image/world.png", "Fast Worldwide Delivery",
                                  "Global reach with local expertise, ensuring swift and reliable deliveries across continents."),
                              SizedBox(height: 10),
                              _buildBenefitRow("assets/image/safe.png", "Safe and Secure Delivery",
                                  "Advanced tracking systems and secure warehousing to protect your valuable cargo."),
                            ],
                          ),
      
                          SizedBox(height: 20),
      
                          // Button & Contact Section
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                ),
                                child: Text(
                                  "Know More About Us",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 20),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage("assets/image/help.png"),
                                    radius: 20,
                                  ),
                                  SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Need Help?", style: TextStyle(fontSize: 14, color: Colors.black54)),
                                      Text("+1 (888) 123-4567",
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create benefit rows
  Widget _buildBenefitRow(String imagePath, String title, String description) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          width: 40,
          height: 40,
          fit: BoxFit.contain,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(description, style: TextStyle(fontSize: 14, color: Colors.black54)),
            ],
          ),
        ),
      ],
    );
  }
}