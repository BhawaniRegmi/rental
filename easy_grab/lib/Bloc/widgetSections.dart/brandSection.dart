// import 'package:easy_grab/utils/myColors.dart';
// import 'package:flutter/material.dart';

// class BrandSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Get screen width using MediaQuery
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Container(color: MyColors.whiteColor,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Title
//             Text(
//               'Trusted by leading brands',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blueGrey[800],
//               ),
//             ),
//             SizedBox(height: 8),
      
//             // Horizontal scroll view for logos
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   _buildBrandLogo('lipton.png', screenWidth),
//                   _buildBrandLogo('star.jpeg', screenWidth),
//                   _buildBrandLogo('addi.png', screenWidth),
//                   _buildBrandLogo('sam.png', screenWidth),
//                   _buildBrandLogo('america.jpeg', screenWidth),
//                   _buildBrandLogo('toyota.png', screenWidth),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Method to build each brand logo
//   Widget _buildBrandLogo(String assetName, double screenWidth) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 16.0),
//       child: Image.asset(
//         'assets/image/$assetName',
//         height: 50, // Adjust height as per your needs
//         width: screenWidth * 0.2, // Adjust width based on screen width
//         fit: BoxFit.contain,
//       ),
//     );
//   }
// }

// import 'package:easy_grab/utils/myColors.dart';
// import 'package:flutter/material.dart';

// class BrandSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Get screen width using MediaQuery
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Container(
//      // color: MyColors.whiteColor,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),//16      8
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Title
//             Text(
//               'Trusted by leading brands',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blueGrey[800],
//               ),
//             ),
//             SizedBox(height: 8),
            
//             // Horizontal scroll view for logos
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   _buildBrandLogo('lipton.png', screenWidth),
//                   _buildBrandLogo('star.jpeg', screenWidth),
//                   _buildBrandLogo('addi.png', screenWidth),
//                   _buildBrandLogo('sam.png', screenWidth),
//                   _buildBrandLogo('america.jpeg', screenWidth),
//                   _buildBrandLogo('toyota.png', screenWidth),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Method to build each brand logo
//   Widget _buildBrandLogo(String assetName, double screenWidth) {
//     return Container(
//       margin: EdgeInsets.only(right: 16.0),
//       padding: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Image.asset(
//         'assets/image/$assetName',
//         height: 50,
//         width: screenWidth * 0.2,
//         fit: BoxFit.contain,
//       ),
//     );
//   }
// }











// import 'package:flutter/material.dart';

// class TrustedBrandsSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Fetch the screen width to adjust the layout for responsive design
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Title
//           Text(
//             'Trusted by leading brands',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colors.blueGrey,
//             ),
//           ),
//           SizedBox(height: 20),
//           // Logo row with scrollable effect for smaller screen sizes
//           Container(
//             height: 120, // Height of the logos container
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 _buildLogo('assets/image/lipton.png'),
//                 _buildLogo('assets/image/star.jpeg'),
//                 _buildLogo('assets/image/addi.png'),
//                 _buildLogo('assets/image/sam.png'),
//                 _buildLogo('assets/image/america.jpeg'),
//                 _buildLogo('assets/image/toyota.png'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildLogo(String assetPath) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//       child: Image.asset(
//         assetPath,
//         height: 60, // Control the height of logos
//         width: 100, // Adjust width for responsiveness
//         fit: BoxFit.contain,
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';

class TrustedBrandsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fetch the screen width to adjust the layout for responsive design
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Text(
            'Trusted by leading brands',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(height: 20),
          // Logo row with even spacing between logos
          Container(
            height: 120, // Height of the logos container
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildLogo('assets/image/lipton.png'),
                _buildLogo('assets/image/star.jpeg'),
                _buildLogo('assets/image/addi.png'),
                _buildLogo('assets/image/sam.png'),
                _buildLogo('assets/image/america.jpeg'),
                _buildLogo('assets/image/toyota.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo(String assetPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Image.asset(
        assetPath,
        height: 60, // Control the height of logos
        width: 100, // Adjust width for responsiveness
        fit: BoxFit.contain,
      ),
    );
  }
}