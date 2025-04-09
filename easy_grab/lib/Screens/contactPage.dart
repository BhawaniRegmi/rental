
import 'package:easy_grab/AboutUS/aboutCompany.dart';
import 'package:easy_grab/AboutUS/aboutUsBanner.dart';
import 'package:easy_grab/AboutUS/coreValue.dart';
import 'package:easy_grab/AboutUS/feed.dart';
import 'package:easy_grab/AboutUS/workSection.dart';
import 'package:easy_grab/B2BSection.dart/conduct.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/fotter.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/headerSection.dart';
import 'package:easy_grab/GallerySection/galleryBanner.dart';
import 'package:easy_grab/GallerySection/imageSection.dart';
import 'package:easy_grab/GallerySection/videoSection.dart';
import 'package:easy_grab/JobsSection/jobList.dart';
import 'package:easy_grab/contactSection/contact.dart';
import 'package:easy_grab/contactSection/contactBanner.dart';
import 'package:easy_grab/widgets/shippingNeedSection.dart';
import 'package:flutter/material.dart';

class Contactpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(), // Header Section
            Contactbanner(),
         ContactUsSection(),
            FooterSection()
            //SizedBox(height: 5000), // Spacer for next sections
          ],
        ),
      ),
    );
  }
}