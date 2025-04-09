import 'package:flutter/material.dart';

class PhotoGallerySection extends StatelessWidget {
  final List<String> categories = [
    "Express Delivery",
    "Warehouse Operations",
    "International Shipping",
    "Customer Service"
  ];

  final List<String> imageAssets = [
    "assets/image/g1.png",
    "assets/image/g2.png",
    "assets/image/g3.png",
    "assets/image/g4.png",
    "assets/image/g5.png",
    "assets/image/g6.png"
  ];

  PhotoGallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = 3;

    if (screenWidth < 600) {
      crossAxisCount = 1; // Mobile
    } else if (screenWidth < 1000) {
      crossAxisCount = 2; // Tablet
    }

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "Photo Gallery",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          // Category Tabs
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 16,
              children: categories
                  .map((category) => TextButton(
                        onPressed: () {},
                        child: Text(
                          category,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 16),

          // Grid Gallery
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.3,
            ),
            itemCount: imageAssets.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imageAssets[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),

          // Load More Button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: const Text(
                  "Load More",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
