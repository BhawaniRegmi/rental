import 'package:easy_grab/Bloc/widgetSections.dart/b2bSection.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/blogSection.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/brandSection.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/deliveryRiderService.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/fotter.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/headerSection.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/launchBrand.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/logisticService.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/mapSection.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/sucessSection.dart';
import 'package:easy_grab/Bloc/widgetSections.dart/transport.dart';
import 'package:easy_grab/widgets/bannerSection.dart';

import 'package:easy_grab/widgets/shippingNeedSection.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(), // Header Section
            Stack(
              clipBehavior: Clip.none, // Ensures content can overflow
              children: [
                BannerSection(), // Background Banner
                
                Positioned(
                  top: 500, // Adjust this value as needed
                  left: 0,
                  right: 0,
                  child: ShippingNeedsWidget(), // White Card Floating Over Banner
                ),
              ],
            ),
            SizedBox(height: 100),
B2BPlatformWidget(),
DeliveryRiderServiceWidget(),
LogisticsServiceWidget(),
ServiceCardsSection(),
GCCBrandLaunchSection(),
SuccessStorySection(),
//LocationsMapSection(),
TrustedBrandsSection(),
BlogSection(),
FooterSection(),
          ],
        ),
      ),
    );
  }
}



