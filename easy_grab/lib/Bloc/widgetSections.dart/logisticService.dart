import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogisticsServiceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: MyColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SizedBox(
          height: 350, // Ensures finite height
          child: Stack(
            clipBehavior: Clip.none, // Allows overlap
            children: [
              // Left Section - Image
              Positioned(
                left: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image/buss.png', // Ensure this image is added to your assets
                    fit: BoxFit.cover,
                    height: 330,
                    width: 550,
                  ),
                ),
              ),
      
              // Right Section - Content Overlapping
              Positioned(
                right:150,
                top: 26, // Adjust to control overlap effect
                child: Container(
                  width: 700, //480 Controls overlap width
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min, // Prevent infinite height issues
                    children: [
                      Text(
                        "Logistics Service",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Career opportunities at EasyGrab",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "We'll help you find the right logistics career path at EasyGrab.",
                        style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                      ),
                      SizedBox(height: 16),
                      
                      Text(
                        "Services Available",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 12),
      
                      Row(
                        children: [
                          Expanded(
                            child: _serviceItem(Icons.work, "Available Positions"),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: _serviceItem(Icons.description, "Application Guide"),
                          ),
                        ],
                      ),
      
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.primaryBlue,
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            "Apply Now",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _serviceItem(IconData icon, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange, size: 20),
          SizedBox(width: 8),
          Text(
            title,
            style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
