// import 'package:flutter/material.dart';

// class DriverVehicleSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         // Determine the screen width to adjust layout
//         double screenWidth = constraints.maxWidth;

//         // Calculate padding based on screen size
//         double horizontalPadding = screenWidth > 600 ? 16.0 : 8.0;

//         // Calculate text scale factor for responsiveness
//         double textScaleFactor = screenWidth > 600 ? 1.0 : 0.8;

//         return Container(
//           color: Colors.grey[700], // Dark grey background
//           padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//           child: Row(
//             children: [
//               Text(
//                 'For Drivers',
//                 textScaleFactor: textScaleFactor,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(width: 16), // Spacing between texts
//               Text(
//                 'For Vehicle',
//                 textScaleFactor: textScaleFactor,
//                 style: TextStyle(
//                   color: Colors.grey[400], // Lighter grey for secondary text
//                   fontSize: 16,
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }









import 'package:easy_grab/B2BSection.dart/benifits.dart';
import 'package:easy_grab/B2BSection.dart/carvehicle.dart';
import 'package:easy_grab/B2BSection.dart/conduct.dart';
import 'package:easy_grab/B2BSection.dart/contactUs.dart';
import 'package:easy_grab/B2BSection.dart/driverDis.dart';
import 'package:easy_grab/B2BSection.dart/driverpartnership.dart';
import 'package:easy_grab/B2BSection.dart/easyGrabPartnership.dart';
import 'package:easy_grab/B2BSection.dart/partnerShipTerm.dart';
import 'package:easy_grab/B2BSection.dart/responsivePartnershipSection.dart';
import 'package:easy_grab/B2BSection.dart/responsiveTopic.dart';
import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class DriverVehicleSection extends StatefulWidget {
  @override
  _DriverVehicleSectionState createState() => _DriverVehicleSectionState();
}

class _DriverVehicleSectionState extends State<DriverVehicleSection> {
  String _selectedTab = 'drivers'; // Default selected tab

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double horizontalPadding = screenWidth > 600 ? 16.0 : 8.0;
        double textScaleFactor = screenWidth > 600 ? 1.0 : 0.8;

        // return Padding(
        //   padding: const EdgeInsets.fromLTRB(30,8,30,8),
        //   child: Column(
        //     children: [
        //       Container(
        //         color: MyColors.primaryBlue,
        //         padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        //         child: Row(
        //           children: [
        //             GestureDetector(
        //               onTap: () {
        //                 setState(() {
        //                   _selectedTab = 'drivers';
        //                 });
        //               },
        //               child: Text(
        //                 'For Drivers',
        //                 textScaleFactor: textScaleFactor,
        //                 style: TextStyle(
        //                   color: _selectedTab == 'drivers'
        //                       ? Colors.white
        //                       : Colors.grey[400],
        //                   fontSize: 18,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ),
        //             SizedBox(width: 16),
        //             GestureDetector(
        //               onTap: () {
        //                 setState(() {
        //                   _selectedTab = 'vehicles';
        //                 });
        //               },
        //               child: Text(
        //                 'For Vehicle',
        //                 textScaleFactor: textScaleFactor,
        //                 style: TextStyle(
        //                   color: _selectedTab == 'vehicles'
        //                       ? Colors.white
        //                       : Colors.grey[400],
        //                   fontSize: 16,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       // Content based on selected tab
        //       _buildContent(),
        //     ],
        //   ),
        // );
        return Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(8,8,1140,8),
        child: Container(
          color: MyColors.primaryBlue,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedTab = 'drivers';
                  });
                },
                child: Text(
                  'For Drivers',
                  textScaleFactor: textScaleFactor,
                  style: TextStyle(
                    color: _selectedTab == 'drivers'
                        ? Colors.white
                        : Colors.grey[400],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedTab = 'vehicles';
                  });
                },
                child: Text(
                  'For Vehicle',
                  textScaleFactor: textScaleFactor,
                  style: TextStyle(
                    color: _selectedTab == 'vehicles'
                        ? Colors.white
                        : Colors.grey[400],
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Content based on selected tab
      _buildContent(),
    ],
  ),
);
      },
    );
  }

  Widget _buildContent() {
    if (_selectedTab == 'drivers') {
      return  Column(children: [
          SizedBox(height: 10,),
           ForDriversSection(),
           SizedBox(height: 10,),
           PartnershipBenefitsSection(),
            SizedBox(height: 10,),
           PolicySection(),
           DriverPartnershipProgram(),
           PartnerWithUsSection(),
        ],);
      
    } else {
      return  Column(children: [
          SizedBox(height: 10,),
         ResponsiveSection(),
         VehicleRequirementsSection(),
         PartnershipTermsSection(),
         PartnerSectionNew(),
        
        ],);
    }
  }
}