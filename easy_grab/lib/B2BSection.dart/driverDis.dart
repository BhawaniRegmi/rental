import 'package:flutter/material.dart';

class ForDriversSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width < 768;

    return Container(color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: 40),  //.05
        child: Row(
          children: [
            Column(
              children: [
                // Responsive Row Layout
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    // Left Text Section
                    SizedBox(
                      width: isMobile ? width * 0.9 : width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title
                          Text(
                            "For Drivers",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 15),
            
                          // Description
                          Text(
                            "If you want to be a part of Easy Grab’s drivers’ family then there are a few things that you must know. Easy Grab’s drivers believe that to be an affiliate of the company you must embrace the following facts. At EasyGrab we respect our driver power and strive to maintain a professional atmosphere that will help them to thrive at work. The following terms and conditions have therefore been adopted with a view of providing a good experience for both the drivers and the clients.",
                            style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                          ),
                          SizedBox(height: 20),
            
                          // Subheading
                          Text(
                            "Support Provided by EasyGrab",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
            
                          // Support List
                          _supportItem("Visa Sponsorship", "Visa fees is not paid by the company but it will be paid only if it is truly necessary given some unbearable circumstances only."),
                          _supportItem("Vehicles", "EasyGrab shall have provision of vehicles to be used in delivery operations with all the driver’s necessary resources to accomplish their tasks."),
                          _supportItem("License", "The candidates that are from the countries mentioned above, Easy Grab has a provision to cover the expenses that is required for acquiring the license. However, the drivers must pay it back to the company in installments."),
                          _supportItem("Accommodation", "House, flat or room will be provided for those that require a place and food will be covered for minimum 6 and maximum 10 persons."),
                          
                          SizedBox(height: 20),
            
                          // Apply Now Button
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              "Apply Now",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
            
                 
                  ],
                ),
              ],
              
            ),
            SizedBox(width: 20,),
               // Right Image Section
                    SizedBox(
                      width: isMobile ? width * 0.9 : width * 0.45,
                      child: Image.asset(
                        "assets/image/dr.png", // Replace with your actual asset path
                        fit: BoxFit.cover,
                      ),
                    ),
          ],
        ),
      ),
    );
  }

  // Support Item Row
  Widget _supportItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, color: Colors.black, size: 18),
          SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
                children: [
                  TextSpan(text: "$title: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
