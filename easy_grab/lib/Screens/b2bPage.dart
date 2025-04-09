
import 'package:easy_grab/AboutUS/aboutCompany.dart';
import 'package:easy_grab/AboutUS/aboutUsBanner.dart';
import 'package:easy_grab/AboutUS/coreValue.dart';
import 'package:easy_grab/AboutUS/feed.dart';
import 'package:easy_grab/AboutUS/workSection.dart';
import 'package:easy_grab/B2BSection.dart/b2bBanner.dart';
import 'package:easy_grab/B2BSection.dart/benifits.dart';
import 'package:easy_grab/B2BSection.dart/conduct.dart';
import 'package:easy_grab/B2BSection.dart/driverDis.dart';
import 'package:easy_grab/B2BSection.dart/driverpartnership.dart';
import 'package:easy_grab/B2BSection.dart/easyGrabPartnership.dart';
import 'package:easy_grab/B2BSection.dart/switchButton.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/fotter.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/headerSection.dart';
import 'package:easy_grab/JobsSection/jobList.dart';
import 'package:easy_grab/widgets/shippingNeedSection.dart';
import 'package:flutter/material.dart';

class B2Bpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           HeaderSection(), // Header Section
           Partnerbanner(),
           DriverVehicleSection(),
           SizedBox(height: 15,),
           
          //  ForDriversSection(),
          //  PartnershipBenefitsSection(),
          //  PolicySection(),
          //  DriverPartnershipProgram(),
          //  PartnerWithUsSection(),
           FooterSection()
          ],
        ),
      ),
    );
  }
}