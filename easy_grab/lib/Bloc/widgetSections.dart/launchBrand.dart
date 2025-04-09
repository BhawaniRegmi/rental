import 'package:flutter/material.dart';

class GCCBrandLaunchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      color: Color(0xFFDDE9F9), // Light blue background
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Left Text Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Launch your brand in the GCC\nwith ease",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Connect with the largest B2B marketplace in the Middle East and North Africa. "
                      "Expand your reach and grow your business across borders.",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(height: 20),

                    // Feature Box
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/logo/marketplace.png", // Replace with your actual asset path
                            width: 40, // Adjust size as needed
                            height: 40,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Marketplace Integration",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Seamlessly connect your business to our powerful B2B platform and reach "
                                  "thousands of potential buyers across the GCC region.",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        _buildBenefitRow("assets/logo/end-to-end.png",
                            "End-to-End Fulfillment"),
                        _buildBenefitRow("assets/logo/brand-exposure.png",
                            "Brand Exposure: MENA-Wide Presence"),
                        _buildBenefitRow(
                            "assets/logo/ad-tech.png", "AdTech for Visibility"),
                      ],
                    ),

                    SizedBox(height: 20),

                    // Call to Action Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text("Get in touch",
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 50),

              // Right Image Section
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 10)
                        ],
                      ),
                      child: Image.asset("assets/image/air.png",
                          width: screenWidth * 0.4,
                          height: 250), // Replace with actual asset
                    ),
                    // Positioned(
                    //   top: 30,
                    //   left: 20,
                    //   child: Icon(Icons.local_shipping, size: 40, color: Colors.orange),
                    // ),
                    // Positioned(
                    //   top: 50,
                    //   right: 30,
                    //   child: Icon(Icons.airplanemode_active, size: 40, color: Colors.blue),
                    // ),
                    Positioned(
                      bottom: 128,
                      left: 285,
                      child: Image.asset(
                        'assets/logo/play.png', // Replace with your image path
                        width: 40,
                        height: 40,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitRow(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 24, // Adjust size as needed
            height: 24,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
