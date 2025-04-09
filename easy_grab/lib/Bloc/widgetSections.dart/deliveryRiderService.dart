// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class DeliveryRiderServiceWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Left Section - Text & Features
//           Expanded(
//             flex: 5,
//             child: Container(
//               padding: EdgeInsets.all(24),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Delivery Rider Service",
//                     style: GoogleFonts.poppins(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   SizedBox(height: 4),
//                   Text(
//                     "For All Partners",
//                     style: GoogleFonts.poppins(
//                       fontSize: 16,
//                       color: Colors.black54,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     "Learn about EasyGrab Express – the fastest growing delivery rider network in your city.",
//                     style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
//                   ),
//                   SizedBox(height: 16),
                  
//                   Text(
//                     "Services Available",
//                     style: GoogleFonts.poppins(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   SizedBox(height: 12),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       _serviceItem(Icons.delivery_dining, "Same Day Delivery"),
//                       SizedBox(width: 20),
//                       _serviceItem(Icons.access_time, "Flexible Working Hours"),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       _serviceItem(Icons.track_changes, "Real-time Order Tracking"),
//                       SizedBox(width: 20),
//                       _serviceItem(Icons.payment, "Competitive Payment Plans"),
//                     ],
//                   ),

//                   SizedBox(height: 20),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Explore EasyGrab",
//                       style: GoogleFonts.poppins(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),

//           SizedBox(width: 20),

//           // Right Section - Image
//           Expanded(
//             flex: 5,
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: Image.asset(
//                 'assets/image/delivery.png', // Ensure the image is placed correctly
//                 fit: BoxFit.cover,
//                 height: 300,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _serviceItem(IconData icon, String title) {
//     return Row(
//       children: [
//         Container(
//           padding: EdgeInsets.all(6),
//           decoration: BoxDecoration(
//             color: Colors.orange.shade100,
//             borderRadius: BorderRadius.circular(6),
//           ),
//           child: Icon(icon, color: Colors.orange, size: 20),
//         ),
//         SizedBox(width: 8),
//         Text(
//           title,
//           style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
//         ),
//       ],
//     );
//   }
// }










import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryRiderServiceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: MyColors.whiteColor,  // Use your own color
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SizedBox(
          height: 350, // Ensures finite height
          child: Stack(
            clipBehavior: Clip.none, // Allows overlap
            children: [
              // Right Section - Image
              Positioned(
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image/delivery.png',
                    fit: BoxFit.cover,
                    height: 360,//320
                    width: 550,
                  ),
                ),
              ),
      
              // Left Section - Text & Features (Overlapping)
              Positioned(
                left: 150,
                top: 20, // Adjust to control overlap effect
                child: Container(
                  width: 700, // 480 Controls overlap width
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
                        "Delivery Rider Service",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "For All Partners",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Learn about EasyGrab Express – the fastest growing delivery rider network in your city.",
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
                          _serviceItem(Icons.delivery_dining, "Same Day Delivery"),
                          SizedBox(width: 70),
                          _serviceItem(Icons.access_time, "Flexible Working Hours"),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          _serviceItem(Icons.track_changes, "Real-time Order Tracking"),
                          SizedBox(width: 20),
                          _serviceItem(Icons.payment, "Competitive Payment Plans"),
                        ],
                      ),
      
                      SizedBox(height: 20),
                      SizedBox(width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyColors.primaryBlue,
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Explore EasyGrab",
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
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.orange.shade100,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Icon(icon, color: MyColors.primaryOrange, size: 20),
        ),
        SizedBox(width: 8),
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
