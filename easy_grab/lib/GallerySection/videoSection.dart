import 'package:flutter/material.dart';

class VideoGallerySection extends StatelessWidget {
  final List<String> categories = [
    "All Videos",
    "Express Delivery",
    "Warehousing",
    "International Shipping",
    "Customer Stories"
  ];

  final List<Map<String, String>> videos = [
    {
      "thumbnail": "assets/image/g1.png",
      "title": "Next-Day Express Delivery Service",
      "description":
          "Experience our lightning-fast delivery service across UAE cities with real-time tracking and guaranteed safety.",
      "views": "2.4K Views",
      "date": "2 days ago",
      "duration": "3:45"
    },
    {
      "thumbnail": "assets/image/g2.png",
      "title": "Smart Warehousing Solutions",
      "description":
          "Tour our state-of-the-art warehouse facility equipped with automated systems and advanced inventory management.",
      "views": "1.8K Views",
      "date": "1 week ago",
      "duration": "4:20"
    },
    {
      "thumbnail": "assets/image/g3.png",
      "title": "Global Logistics Network",
      "description":
          "See how we connect UAE businesses to the world through our extensive international shipping network.",
      "views": "3.2K Views",
      "date": "2 weeks ago",
      "duration": "5:15"
    },
    {
      "thumbnail": "assets/image/g4.png",
      "title": "Customer Success Stories",
      "description":
          "Hear from our satisfied customers about their experience with our premium delivery services.",
      "views": "4.5K Views",
      "date": "3 weeks ago",
      "duration": "6:30"
    },
  ];

  VideoGallerySection({super.key});

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
          const Center(
            child: Column(
              children: [
                Text(
                  "Video Gallery",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Discover how we're revolutionizing logistics and delivery services.",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Category Tabs
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 10,
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

          // Search Box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search videos...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.black54),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Grid Video Thumbnails
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.5,
            ),
            itemCount: videos.length,
            itemBuilder: (context, index) {
              var video = videos[index];

              return Stack(
                children: [
                  // Thumbnail Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      video["thumbnail"]!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),

                  // Play Button Overlay
                  Positioned.fill(
                    child: Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
                      ),
                    ),
                  ),

                  // Video Duration
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        video["duration"]!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),

                  // Video Info (Title, Description, Views, Date)
                  Positioned(
                    bottom: 8,
                    left: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            video["title"]!,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            video["description"]!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.white70),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.visibility, color: Colors.white70, size: 12),
                              const SizedBox(width: 4),
                              Text(video["views"]!,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white70)),
                              const SizedBox(width: 10),
                              const Icon(Icons.calendar_today,
                                  color: Colors.white70, size: 12),
                              const SizedBox(width: 4),
                              Text(video["date"]!,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white70)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
                  "Load More Videos",
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
