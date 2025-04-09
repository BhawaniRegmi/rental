import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class B2BPlatformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: MyColors.whiteColor,  // Use your own color
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Empowering businesses through digital transformation. Connect, trade, and thrive\n"
              "in the global marketplace with our innovative B2B platform.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Vision Section (Image + Text)
                Expanded(
                  flex: 5,
                  child: Stack(
                    children: [
                      ClipRRect(
                      
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/image/laptopWorking.png', // Ensure image is in assets folder
                          fit: BoxFit.cover,
                          // height: 280,
                          height: 365,
                          width: 800,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            "OUR VISION\nRevolutionizing the MENA B2B landscape with a seamless global platform that connects buyers and sellers effortlessly",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                // Mission and Features
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "OUR MISSION\nEmpowering businesses of all sizes to grow, reach new consumers, and inspire a new generation to build thriving communities.",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade900,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Everything you need in one B2B integrated platform. It's easier with us.",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            _featureItem(Icons.public, "Global Reach", "Connect with verified suppliers worldwide"),
                            _featureItem(Icons.trending_up, "Growth Tools", "Analytics and business insights"),
                            _featureItem(Icons.security, "Secure Trading", "Protected transactions and payments"),
                            _featureItem(Icons.headset_mic, "24/7 Support", "Expert assistance anytime"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _featureItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  description,
                  style: GoogleFonts.poppins(fontSize: 12, color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
