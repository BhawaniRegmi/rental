

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class FooterSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;

//     return Container(
//       width: width,
//       color: Color(0xFF0D2B3E), // Dark blue background
//       padding: EdgeInsets.symmetric(vertical: 40, horizontal: width * 0.05),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Top Row (Logo, Help & Support, Office Timing, About Company)
//           Wrap(
//             alignment: WrapAlignment.spaceBetween,
//             spacing: 20, //20
//             runSpacing: 20,
//             children: [
//               // Logo & Tagline
//               SizedBox(
//                 width: width * 0.15, //.25
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         // Handle logo tap
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.fromLTRB(15, 4, 0, 0),
//                         child: Image.asset("assets/image/logo-white.png", height: 100),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               // Help & Support
//               SizedBox(
//                 width: width * 0.2, //.25
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _titleText("Help & Support"),
//                     InkWell(
//                       onTap: () {
//                         // Handle phone tap
//                       },
//                       child: _contactInfo(Icons.phone, "+971 56 227 5078"),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         // Handle email tap
//                       },
//                       child: _contactInfo(Icons.email, "easygrabuae@gmail.com"),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         // Handle WhatsApp support tap
//                       },
//                       child: _contactInfo(Icons.chat, "+971 56 227 5078"),
//                     ),
//                   ],
//                 ),
//               ),

//               // Head Office Timing
//               SizedBox(
//                 width: width * 0.2,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _titleText("Head Office Timing:"),
//                     Text("Monday - Friday", style: _normalTextStyle()),
//                     Text("07:30 AM - 03:30 PM", style: _normalTextStyle()),
//                     SizedBox(height: 10),
//                     Row(
//                       children: [
//                         _socialIcon(FontAwesomeIcons.facebook),
//                         _socialIcon(FontAwesomeIcons.twitter),
//                         _socialIcon(FontAwesomeIcons.instagram),
//                         _socialIcon(FontAwesomeIcons.linkedin),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               // About Company
//               SizedBox(
//                 width: width * 0.3,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _titleText("About Company"),
//                     Text(
//                       "Easy Grab UAE excels in logistics, transport, and delivery "
//                       "management, leveraging advanced technology and smart applications "
//                       "to ensure efficiency, reliability, and seamless, customer-focused solutions "
//                       "with innovation at its core.",
//                       style: _normalTextStyle(),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),

//           SizedBox(height: 30),
//           Divider(color: Colors.grey[700]),

//           // Services, Shipping Info, Quick Links
//           Padding(
//             padding: const EdgeInsets.only(top: 20),
//             child: Center(
//               child: Wrap(
//                 alignment: WrapAlignment.spaceBetween,
//                 spacing: 20,
//                 runSpacing: 20,
//                 children: [
//                   _footerColumn("Services", [
//                     "Personal",
//                     "Business",
//                     "Suppliers",
//                     "Other Services",
//                   ]),
//                   _footerColumn("", [
//                     "Personal",
//                     "Business",
//                     "Suppliers",
//                     "Other Services",
//                   ]),
//                   _footerColumn("Shipping Info", [
//                     "Glossary",
//                     "Abbreviations",
//                     "Overnight Shipping",
//                     "Other Services",
//                   ]),
//                   _footerColumn("", [
//                     "Same-Day",
//                     "International",
//                     "Suppliers",
//                     "Other Services",
//                   ]),
//                   _footerColumn("Quick Links", [
//                     "Our Services",
//                     "Contact",
//                     "Booking",
//                     "Job Application Form",
//                   ]),
//                   _footerColumn("", [
//                     "Investment Form",
//                     "Contact",
//                     "Contact Us",
//                     "News",
//                   ]),
//                 ],
//               ),
//             ),
//           ),

//           SizedBox(height: 30),
//           Divider(color: Colors.grey[700]),

//           // Bottom Copyright & Links
//           Center(
//             child: Column(
//               children: [
//                 Text("© 2024 EasyGrab. All Rights Reserved.",
//                     style: TextStyle(color: Colors.grey, fontSize: 12)),
//                 SizedBox(height: 10),
//                 Wrap(
//                   spacing: 20,
//                   children: [
//                     _linkText("Sitemap"),
//                     _linkText("Terms & Conditions"),
//                     _linkText("Privacy Policy"),
//                     _linkText("Usage Terms"),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Helper method to create a title text
//   Widget _titleText(String text) {
//     return Text(
//       text,
//       style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
//     );
//   }

//   // Helper method to create normal text style
//   TextStyle _normalTextStyle() {
//     return TextStyle(color: Colors.grey[400], fontSize: 14);
//   }

//   // Helper method to create a contact info row
//   Widget _contactInfo(IconData icon, String text) {
//     return Row(
//       children: [
//         Icon(icon, color: Colors.grey, size: 16),
//         SizedBox(width: 8),
//         Text(text, style: _normalTextStyle()),
//       ],
//     );
//   }

//   // Helper method to create a social media icon
//   Widget _socialIcon(IconData icon) {
//     return InkWell(
//       onTap: () {
//         // Handle social media icon tap
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(right: 10),
//         child: CircleAvatar(
//           backgroundColor: Colors.grey[800],
//           radius: 15,
//           child: Icon(icon, color: Colors.white, size: 18),
//         ),
//       ),
//     );
//   }

//   // Helper method to create a column of footer links
//   Widget _footerColumn(String title, List<String> items) {
//     return SizedBox(
//       width: 150,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           _titleText(title),
//           SizedBox(height: 10),
//           ...items.map((item) => _linkText(item)).toList(),
//         ],
//       ),
//     );
//   }

//   // Helper method to create a clickable footer link
//   Widget _linkText(String text) {
//     return InkWell(
//       onTap: () {
//         // Handle link tap
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 5),
//         child: Text(
//           text,
//           style: TextStyle(color: Colors.white60, fontSize: 14),
//         ),
//       ),
//     );
//   }
// }









import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double logoWidth;
    double paddingHorizontal;
    double columnWidth;
    if (width < 600) {
      // Mobile
      logoWidth = width * 0.5;
      paddingHorizontal = width * 0.05;
      columnWidth = width * 0.8;
    } else if (width < 1200) {
      // Tablet
      logoWidth = width * 0.25;
      paddingHorizontal = width * 0.05;
      columnWidth = width * 0.4;
    } else {
      // Web
      logoWidth = width * 0.15;
      paddingHorizontal = width * 0.05;
      columnWidth = width * 0.2;
    }

    return Container(
      width: width,
      color: Color(0xFF0D2B3E), // Dark blue background
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: paddingHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Row (Logo, Help & Support, Office Timing, About Company)
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            spacing: 20,
            runSpacing: 20,
            children: [
              // Logo & Tagline
              SizedBox(
                width: logoWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // Handle logo tap
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 4, 0, 0),
                        child: Image.asset("assets/image/logo-white.png", height: 100),
                      ),
                    ),
                  ],
                ),
              ),

              // Help & Support
              SizedBox(
                width: columnWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _titleText("Help & Support"),
                    InkWell(
                      onTap: () {
                        // Handle phone tap
                      },
                      child: _contactInfo(Icons.phone, "+971 56 227 5078"),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle email tap
                      },
                      child: _contactInfo(Icons.email, "easygrabuae@gmail.com"),
                    ),
                    InkWell(
                      onTap: () {
                        // Handle WhatsApp support tap
                      },
                      child: _contactInfo(Icons.chat, "+971 56 227 5078"),
                    ),
                  ],
                ),
              ),

              // Head Office Timing
              SizedBox(
                width: columnWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _titleText("Head Office Timing:"),
                    Text("Monday - Friday", style: _normalTextStyle()),
                    Text("07:30 AM - 03:30 PM", style: _normalTextStyle()),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        _socialIcon(FontAwesomeIcons.facebook),
                        _socialIcon(FontAwesomeIcons.twitter),
                        _socialIcon(FontAwesomeIcons.instagram),
                        _socialIcon(FontAwesomeIcons.linkedin),
                      ],
                    ),
                  ],
                ),
              ),

              // About Company
              SizedBox(
                width: columnWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _titleText("About Company"),
                    Text(
                      "Easy Grab UAE excels in logistics, transport, and delivery "
                      "management, leveraging advanced technology and smart applications "
                      "to ensure efficiency, reliability, and seamless, customer-focused solutions "
                      "with innovation at its core.",
                      style: _normalTextStyle(),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 30),
          Divider(color: Colors.grey[700]),

          // Services, Shipping Info, Quick Links
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 20,
                runSpacing: 20,
                children: [
                  _footerColumn("Services", [
                    "Personal",
                    "Business",
                    "Suppliers",
                    "Other Services",
                  ]),
                  _footerColumn("", [
                    "Personal",
                    "Business",
                    "Suppliers",
                    "Other Services",
                  ]),
                  _footerColumn("Shipping Info", [
                    "Glossary",
                    "Abbreviations",
                    "Overnight Shipping",
                    "Other Services",
                  ]),
                  _footerColumn("", [
                    "Same-Day",
                    "International",
                    "Suppliers",
                    "Other Services",
                  ]),
                  _footerColumn("Quick Links", [
                    "Our Services",
                    "Contact",
                    "Booking",
                    "Job Application Form",
                  ]),
                  _footerColumn("", [
                    "Investment Form",
                    "Contact",
                    "Contact Us",
                    "News",
                  ]),
                ],
              ),
            ),
          ),

          SizedBox(height: 30),
          Divider(color: Colors.grey[700]),

          // Bottom Copyright & Links
          Center(
            child: Column(
              children: [
                Text("© 2024 EasyGrab. All Rights Reserved.",
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                SizedBox(height: 10),
                Wrap(
                  spacing: 20,
                  children: [
                    _linkText("Sitemap"),
                    _linkText("Terms & Conditions"),
                    _linkText("Privacy Policy"),
                    _linkText("Usage Terms"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create a title text
  Widget _titleText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  // Helper method to create normal text style
  TextStyle _normalTextStyle() {
    return TextStyle(color: Colors.grey[400], fontSize: 14);
  }

  // Helper method to create a contact info row
  Widget _contactInfo(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 16),
        SizedBox(width: 8),
        Text(text, style: _normalTextStyle()),
      ],
    );
  }

  // Helper method to create a social media icon
  Widget _socialIcon(IconData icon) {
    return InkWell(
      onTap: () {
        // Handle social media icon tap
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: CircleAvatar(
          backgroundColor: Colors.grey[800],
          radius: 15,
          child: Icon(icon, color: Colors.white, size: 18),
        ),
      ),
    );
  }

  // Helper method to create a column of footer links
  Widget _footerColumn(String title, List<String> items) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleText(title),
          SizedBox(height: 10),
          ...items.map((item) => _linkText(item)).toList(),
        ],
      ),
    );
  }

  // Helper method to create a clickable footer link
  Widget _linkText(String text) {
    return InkWell(
      onTap: () {
        // Handle link tap
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          text,
          style: TextStyle(color: Colors.white60, fontSize: 14),
        ),
      ),
    );
  }
}