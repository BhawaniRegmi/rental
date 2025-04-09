// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class ContactUsSection extends StatefulWidget {
//   const ContactUsSection({Key? key}) : super(key: key);

//   @override
//   _ContactUsSectionState createState() => _ContactUsSectionState();
// }

// class _ContactUsSectionState extends State<ContactUsSection> {
//   // Sample office data
//   final List<Map<String, String>> offices = [
//     {
//       'name': 'Dubai Office',
//       'address': 'Al Rigga Street 74, Dubai, UAE\n+971 56 227 5078\ndubai@company.com',
//     },
//     {
//       'name': 'Abu Dhabi Office',
//       'address': 'Downtown Area, Abu Dhabi, UAE\n+971 52 123 4567\nabudhabi@company.com',
//     },
//     {
//       'name': 'Sharjah Office',
//       'address': 'Business Center, Sharjah, UAE\n+971 50 987 6543\nsharjah@company.com',
//     },
//     {
//       'name': 'Ajman Office',
//       'address': 'City Center Area, Ajman, UAE\n+971 54 765 4321\najman@company.com',
//     },
//   ];

//   late GoogleMapController mapController;
//   final LatLng _center = const LatLng(38.8895, -77.032);

//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Header
//           const Text(
//             'Contact With Us',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 8),
//           const Text(
//             'Write a Message to us',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w500,
//               color: Colors.black54,
//             ),
//           ),
//           const SizedBox(height: 20),

//           // Contact Info and Form
//           screenWidth > 800
//               ? Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _buildOfficeList(),
//                     const SizedBox(width: 20),
//                     _buildContactForm(),
//                   ],
//                 )
//               : Column(
//                   children: [
//                     _buildOfficeList(),
//                     const SizedBox(height: 20),
//                     _buildContactForm(),
//                   ],
//                 ),
//           const SizedBox(height: 20),

//           // Map
//           SizedBox(
//             height: 300,
//             child: GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: _center,
//                 zoom: 11.0,
//               ),
//               markers: {
//                 Marker(
//                   markerId: const MarkerId('mainOffice'),
//                   position: _center,
//                   infoWindow: const InfoWindow(
//                     title: 'Main Office',
//                     snippet: 'Newington Forest',
//                   ),
//                 ),
//                 const Marker(
//                   markerId: MarkerId('branchOffice'),
//                   position: LatLng(38.8795, -77.042),
//                   infoWindow: InfoWindow(
//                     title: 'Branch Office',
//                     snippet: 'Nearby Location',
//                   ),
//                 ),
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildOfficeList() {
//     return Expanded(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: offices.map((office) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 16.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Icon(Icons.location_on, color: Colors.black87),
//                 const SizedBox(width: 8),
//                 Expanded(
//                   child: Text(
//                     '${office['name']}\n${office['address']}',
//                     style: const TextStyle(
//                       fontSize: 16,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }

//   Widget _buildContactForm() {
//     return Expanded(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Your Name',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Your Email',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Subject',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             maxLines: 4,
//             decoration: InputDecoration(
//               labelText: 'Your Message',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {},
//             style: ElevatedButton.styleFrom(
//               foregroundColor: Colors.white, backgroundColor: Colors.black,
//               minimumSize: const Size(double.infinity, 50),
//             ),
//             child: const Text('Send Message'),
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class ContactUsSection extends StatefulWidget {
  const ContactUsSection({Key? key}) : super(key: key);

  @override
  _ContactUsSectionState createState() => _ContactUsSectionState();
}

class _ContactUsSectionState extends State<ContactUsSection> {
  // Sample office data
  final List<Map<String, String>> offices = [
    {
      'name': 'Dubai Office',
      'address': 'Al Rigga Street 74, Dubai, UAE\n+971 56 227 5078\ndubai@company.com',
    },
    {
      'name': 'Abu Dhabi Office',
      'address': 'Downtown Area, Abu Dhabi, UAE\n+971 52 123 4567\nabudhabi@company.com',
    },
    {
      'name': 'Sharjah Office',
      'address': 'Business Center, Sharjah, UAE\n+971 50 987 6543\nsharjah@company.com',
    },
    {
      'name': 'Ajman Office',
      'address': 'City Center Area, Ajman, UAE\n+971 54 765 4321\najman@company.com',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          const Text(
            'Contact With Us',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Write a Message to us',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 20),

          // Contact Info and Form
          screenWidth > 800
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildOfficeList(),
                    const SizedBox(width: 20),
                    _buildContactForm(),
                  ],
                )
              : Column(
                  children: [
                    _buildOfficeList(),
                    const SizedBox(height: 20),
                    _buildContactForm(),
                  ],
                ),
          const SizedBox(height: 20),

          // Static Map Image
          SizedBox(
            height: 300,
            child: Image.asset(
              'assets/image/mapD.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Text('Failed to load map.'));
              },
            ),
          ),

          // // OpenStreetMap Attribution
          // const Padding(
          //   padding: EdgeInsets.only(top: 8.0),
          //   child: Text(
          //     'Map data © OpenStreetMap contributors',
          //     style: TextStyle(fontSize: 12, color: Colors.grey),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildOfficeList() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: offices.map((office) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.location_on, color: Colors.black87),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    '${office['name']}\n${office['address']}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildContactForm() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Your Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'Your Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'Subject',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Your Message',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text('Send Message'),
          ),
        ],
      ),
    );
  }
}