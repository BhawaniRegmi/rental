// import 'package:flutter/material.dart';

// class BlogSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Get screen width using MediaQuery
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Section title
//           Text(
//             'Latest Blog Posts',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             'Stay updated with our latest news and insights',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.grey[600],
//             ),
//           ),
//           SizedBox(height: 16),
          
//           // Grid layout for blog posts
//           // Adjust grid items based on screen width
//           GridView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: screenWidth > 800 ? 3 : (screenWidth > 600 ? 2 : 1),
//               crossAxisSpacing: 16,
//               mainAxisSpacing: 16,
//               childAspectRatio: 1,
//             ),
//             itemCount: 3, // You can update this based on the number of blog posts
//             itemBuilder: (context, index) {
//               return BlogCard(
//                 title: _getTitle(index),
//                 description: _getDescription(index),
//                 imageAsset: _getImageAsset(index),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   // Helper methods for blog data
//   String _getTitle(int index) {
//     switch (index) {
//       case 0:
//         return 'Benefits of Licensed Vehicles';
//       case 1:
//         return 'Delivery Tracking Innovation';
//       case 2:
//         return 'Partnership Opportunities';
//       default:
//         return '';
//     }
//   }

//   String _getDescription(int index) {
//     switch (index) {
//       case 0:
//         return 'Discover why using licensed vehicles is crucial for reliable delivery services...';
//       case 1:
//         return 'How real-time tracking is revolutionizing the delivery industry...';
//       case 2:
//         return 'Explore the benefits of partnering with Easy Grab UAE...';
//       default:
//         return '';
//     }
//   }

//   // Helper method to return the image asset path
//   String _getImageAsset(int index) {
//     switch (index) {
//       case 0:
//         return 'assets/image/van.png';
//       case 1:
//         return 'assets/image/transportTab.png';
//       case 2:
//         return 'assets/image/partnershipBottom.png';
//       default:
//         return '';
//     }
//   }
// }

// class BlogCard extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imageAsset;

//   const BlogCard({
//     required this.title,
//     required this.description,
//     required this.imageAsset,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,//4
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(12),
//               topRight: Radius.circular(12),
//             ),
//             child: Image.asset(
//               imageAsset,
//               width: double.infinity,
//               height: 200,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   description,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey[600],
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 SizedBox(height: 12),
//                 Text(
//                   'Read More →',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text('Blog Section')),
//       body: BlogSection(),
//     ),
//   ));
// }















import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';

class BlogSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(color: MyColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section title
            Text(
              'Latest Blog Posts',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Stay updated with our latest news and insights',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            
            // Grid layout for blog posts
            // Adjust grid items based on screen width
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: screenWidth > 800 ? 3 : (screenWidth > 600 ? 2 : 1),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.15,//1
              ),
              itemCount: 3, // You can update this based on the number of blog posts
              itemBuilder: (context, index) {
                return BlogCard(
                  title: _getTitle(index),
                  description: _getDescription(index),
                  imageAsset: _getImageAsset(index),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper methods for blog data
  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Benefits of Licensed Vehicles';
      case 1:
        return 'Delivery Tracking Innovation';
      case 2:
        return 'Partnership Opportunities';
      default:
        return '';
    }
  }

  String _getDescription(int index) {
    switch (index) {
      case 0:
        return 'Discover why using licensed vehicles is crucial for reliable delivery services...';
      case 1:
        return 'How real-time tracking is revolutionizing the delivery industry...';
      case 2:
        return 'Explore the benefits of partnering with Easy Grab UAE...';
      default:
        return '';
    }
  }

  // Helper method to return the image asset path
  String _getImageAsset(int index) {
    switch (index) {
      case 0:
        return 'assets/image/van.png';
      case 1:
        return 'assets/image/transportTab.png';
      case 2:
        return 'assets/image/partnershipBottom.png';
      default:
        return '';
    }
  }
}

class BlogCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageAsset;

  const BlogCard({
    required this.title,
    required this.description,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle card tap
        print('Card tapped');
      },
      child: Card(
        elevation: 3,//4
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                imageAsset,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Read More →',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.blackColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Blog Section')),
      body: BlogSection(),
    ),
  ));
}