
import 'package:easy_grab/AboutUS/aboutCompany.dart';
import 'package:easy_grab/AboutUS/aboutUsBanner.dart';
import 'package:easy_grab/AboutUS/coreValue.dart';
import 'package:easy_grab/AboutUS/feed.dart';
import 'package:easy_grab/AboutUS/workSection.dart';
import 'package:easy_grab/B2BSection.dart/conduct.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/fotter.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/headerSection.dart';
import 'package:easy_grab/JobsSection/jobList.dart';
import 'package:easy_grab/widgets/shippingNeedSection.dart';
import 'package:flutter/material.dart';

class Aboutuspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(), // Header Section
            AboutUsBanner(),
           // AboutCompanySectionConduct(),
            AboutCompanySectionWork(),
            CoreValuesSection(),
            SizedBox(height: 4,),
            StatsSection(),
            FooterSection()
            //SizedBox(height: 5000), // Spacer for next sections
          ],
        ),
      ),
    );
  }
}