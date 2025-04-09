
// import 'package:easy_grab/AboutUS/aboutCompany.dart';
// import 'package:easy_grab/Screens/aboutUsPage.dart';
// import 'package:easy_grab/Screens/servicePage.dart';
// import 'package:easy_grab/utils/myColors.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class HeaderSection extends StatelessWidget {
//   HeaderSection({Key? key}) : super(key: key);
//   late BuildContext ctx;

//   @override
//   Widget build(BuildContext context) {
//     ctx = context;
//     double screenWidth = MediaQuery.of(context).size.width;

//     double logoWidth;
//     if (screenWidth < 600) {
//       // Mobile
//       logoWidth = 50;
//     } else if (screenWidth < 1200) {
//       // Tablet
//       logoWidth = 75;
//     } else {
//       // Web
//       logoWidth = 100;
//     }

//     return Container(
//       color: MyColors.whiteColor,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(15, 4, 0, 0),
//                 child: Image.asset("assets/logo/easyGrab.png", height: logoWidth),
//               ),
//               Expanded(
//                 child: Column(
//                   children: [
//                     // Top Bar: Social Icons & Contact Info
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           // Social Media Icons
//                           Row(
//                             children: [
//                               _socialIcon(FontAwesomeIcons.twitter),
//                               _socialIcon(FontAwesomeIcons.facebook),
//                               _socialIcon(FontAwesomeIcons.linkedin),
//                             ],
//                           ),
//                           // Contact Details
//                           Row(
//                             children: [
//                               _contactItem(Icons.phone, "+971 56 227 5078"),
//                               _contactItem(Icons.location_on, "Al Rigga Street 74, Dubai"),
//                               _contactItem(Icons.email, "easygrabuae@gmail.com"),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     Divider(height: 1, color: Colors.grey.shade300),
//                     // Main Navigation Bar
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           // Navigation Menu
//                           Flexible(
//                             child: SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               child: Row(
//                                 children: [
//                                   _navItem("Home"),
//                                   _dropdownNavItem("About Us"),
//                                   _navItem("Services"),
//                                   _navItem("Jobs"),
//                                   _dropdownNavItem("B2B Partnership"),
//                                   _dropdownNavItem("Investment"),
//                                   _navItem("Gallery"),
//                                   _navItem("Blog"),
//                                   _navItem("Contact"),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           // Login/Register Button
//                           ElevatedButton.icon(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: MyColors.primaryOrange,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                             ),
//                             onPressed: () {},
//                             icon: Icon(Icons.person, color: Colors.white),
//                             label: Text(
//                               "Login/Register",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   // Social Media Icon Button
//   Widget _socialIcon(IconData icon) {
//     return Padding(
//       padding: EdgeInsets.only(right: 10),
//       child: IconButton(
//         icon: FaIcon(icon, size: 18, color: Colors.black),
//         onPressed: () {},
//       ),
//     );
//   }

//   // Contact Item (Phone, Location, Email)
//   Widget _contactItem(IconData icon, String text) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: Row(
//         children: [
//           Icon(icon, size: 18, color: Colors.black),
//           SizedBox(width: 5),
//           Text(text, style: TextStyle(fontSize: 14)),
//         ],
//       ),
//     );
//   }

//   // Simple Navigation Item
//   Widget _navItem(String title) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: TextButton(
//         onPressed: () {
//           Navigator.push(ctx, MaterialPageRoute(builder: (context) => Servicepage()));
//         },
//         child: Text(
//           title,
//           style: TextStyle(fontSize: 16, color: Colors.black),
//         ),
//       ),
//     );
//   }

//   // Dropdown Navigation Item
//   Widget _dropdownNavItem(String title) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton<String>(
//           icon: Icon(Icons.arrow_drop_down, color: Colors.black),
//           items: ["Company", "Team"]
//               .map((String value) => DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   ))
//               .toList(),
//           onChanged: (value) {
//             if (value == "Company") {
//               // Navigate to Option 1 Screen
//               Navigator.push(
//                 ctx,
//                 MaterialPageRoute(builder: (context) => Aboutuspage()),
//               );
//             } else if (value == "Team") {
//               // Navigate to Option 2 Screen
//               Navigator.push(
//                 ctx,
//                 MaterialPageRoute(builder: (context) => Aboutuspage()),
//               );
//             }
//           },
//           hint: Text(
//             title,
//             style: TextStyle(fontSize: 16, color: Colors.black),
//           ),
//         ),
//       ),
//     );
//   }
// }











import 'package:easy_grab/AboutUS/aboutCompany.dart';
import 'package:easy_grab/Screens/aboutUsPage.dart';
import 'package:easy_grab/Screens/b2bPage.dart';
import 'package:easy_grab/Screens/homePage.dart';
import 'package:easy_grab/Screens/jobsPage.dart';
import 'package:easy_grab/Screens/servicePage.dart';
import 'package:easy_grab/main.dart';
import 'package:easy_grab/utils/myColors.dart';
import 'package:easy_grab/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HeaderSection extends StatelessWidget {
  HeaderSection({Key? key}) : super(key: key);
  late BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;
    double screenWidth = MediaQuery.of(context).size.width;

    double logoWidth;
    double paddingHorizontal;
    double buttonPadding;
    if (screenWidth < 600) {
      // Mobile
      logoWidth = 50;
      paddingHorizontal = 10;
      buttonPadding = 10;
    } else if (screenWidth < 1200) {
      // Tablet
      logoWidth = 75;
      paddingHorizontal = 20;
      buttonPadding = 15;
    } else {
      // Web
      logoWidth = 100;
      paddingHorizontal = 30;
      buttonPadding = 20;
    }

    return Container(
      color: MyColors.whiteColor,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 4, 0, 0),
                child: Image.asset("assets/logo/easyGrab.png", height: logoWidth),
              ),
              Expanded(
                child: Column(
                  children: [
                    // Top Bar: Social Icons & Contact Info
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Social Media Icons
                          Row(
                            children: [
                              _socialIcon(FontAwesomeIcons.twitter),
                              _socialIcon(FontAwesomeIcons.facebook),
                              _socialIcon(FontAwesomeIcons.linkedin),
                            ],
                          ),
                          // Contact Details
                          Flexible(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  _contactItem(Icons.phone, "+971 56 227 5078"),
                                  _contactItem(Icons.location_on, "Al Rigga Street 74, Dubai"),
                                  _contactItem(Icons.email, "easygrabuae@gmail.com"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 1, color: Colors.grey.shade300),
                    // Main Navigation Bar
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Navigation Menu
                          Flexible(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  _navItem("Home"),
                                  _dropdownNavItem("About Us"),
                                  _navItem("Services"),
                                  _navItem("Jobs"),
                                  _dropdownNavItemPartner("B2B Partnership"),
                                  _dropdownNavItemInvestment("Investment"),                                  
                                  _navItem("Gallery"),
                                  _navItem("Blog"),
                                  _navItem("Contact"),
                                ],
                              ),
                            ),
                          ),
                          // Login/Register Button
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: MyColors.primaryOrange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: buttonPadding, vertical: 12),
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.person, color: Colors.white),
                            label: Text(
                              "Login/Register",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Social Media Icon Button
  Widget _socialIcon(IconData icon) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: IconButton(
        icon: FaIcon(icon, size: 18, color: Colors.black),
        onPressed: () {},
      ),
    );
  }

  // Contact Item (Phone, Location, Email)
  Widget _contactItem(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.black),
          SizedBox(width: 5),
          Text(text, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  // Simple Navigation Item
  Widget _navItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {
          if(title == "Services")
         
         ctx.go(Routes.service);
          else if(title == "Home")
      
          ctx.go(Routes.home);
           else if(title == "Contact")
      
          ctx.go(Routes.contact);
          
             else if(title == "Jobs")
            
        ctx.go(Routes.jobs);  
        else if(title == "Gallery")
            
        ctx.go(Routes.gallery);    
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }

  // Dropdown Navigation Item
  Widget _dropdownNavItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.black),
          items: ["Company", "Team"]
              .map((String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
          onChanged: (value) {
            if (value == "Company") {
         
              ctx.go(Routes.aboutUs);
            } else if (value == "Team") {
           
              ctx.go(Routes.aboutUs);
            }
          },
          hint: Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }



    Widget _dropdownNavItemPartner(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.black),
          items: ["Drivers", "Vehicles"]
              .map((String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
          onChanged: (value) {
            if (value == "Drivers") {
          
              ctx.go(Routes.b2b);
            } else if (value == "Vehicles") {
          
              ctx.go(Routes.b2b);
            }
          },
          hint: Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }

      Widget _dropdownNavItemInvestment(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Icon(Icons.arrow_drop_down, color: Colors.black),
          items: ["Market", "Technology"]
              .map((String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
          onChanged: (value) {
            if (value == "Market") {
          
              ctx.go(Routes.investment);
            } else if (value == "Technology") {
          
              ctx.go(Routes.investment);
            }
          },
          hint: Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }
}