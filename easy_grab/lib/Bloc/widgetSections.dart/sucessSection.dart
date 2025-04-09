import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class SuccessStorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            color: MyColors.primaryBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Left Side - Image with Positioned Messages
                Expanded(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/image/manager.png', // Ensure this image exists in assets
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 550,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 60,
                        left: 20,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Text(
                            "OMG! 🎉 Just hit a HUGE milestone. My business surpassed our target! 💪😊",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 40,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Text(
                            "O WOW, Congrats! 🎊",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Right Side - Success Story
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Success Stories",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "\"Working with this platform has been transformative for our business. We've seen a 300% increase in efficiency and our team productivity has never been better. The tools and support provided have been invaluable in helping us scale.\"",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Magnus Johnson\nCEO, TechVision Solutions",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:MyColors.primaryOrange,
                            padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 25,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Start your story with Tradeling →",
                            style: TextStyle(fontSize: 16, color: MyColors.primaryBlue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
