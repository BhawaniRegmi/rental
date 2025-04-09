import 'package:easy_grab/AboutUS/aboutUsBanner.dart';
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
import 'package:easy_grab/InvestmentSection/investment.dart';
import 'package:easy_grab/InvestmentSection/investmentBanner.dart';
import 'package:flutter/material.dart';

class Investmentpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(), // Header 
            Investmentbanner(),
            InvestmentOpportunities(),
            SizedBox(height: 10,),
            FooterSection(),
            // Spacer for next sections
          ],
        ),
      ),
    );
  }
}