import 'package:easy_grab/JobsSection/jobDecription';
import 'package:easy_grab/widgets/customAlertDialog.dart';
import 'package:flutter/material.dart';

class JobListingsSection extends StatelessWidget {
  final List<JobItem> jobs = [
    JobItem("Senior Delivery Manager", "Logistics & Operations", "Dubai, UAE", "Jan 15", "Feb 15", "assets/image/lipton.png"),
    JobItem("Route Optimization Specialist", "Planning & Strategy", "Abu Dhabi, UAE", "Jan 12", "Jan 26", "assets/image/red.png"),
    JobItem("Warehouse Coordinator", "Warehouse Management", "Sharjah, UAE", "Jan 10", "Feb 10", "assets/image/addi.png"),
    JobItem("Delivery Driver", "Transportation", "Dubai, UAE", "Jan 8", "Jan 31", "assets/image/sam.png"),
  ];
  late BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx =context;
    double screenWidth = MediaQuery.of(context).size.width;
    
    // Adjust grid layout based on screen width
    int crossAxisCount = screenWidth > 1200
        ? 4
        : screenWidth > 800
            ? 2
            : 1;

    return Container(
      color: Color(0xFFF7F8FA), // Light background color
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Section Title
          Text(
            "Join the EasyGrab Team",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "EasyGrab, is an organization that masters both the reliable performance and professional employees. Candidates can be assured that jobs are available and the Company is always on the lookout for great talent interested in the creative organization.",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 32),

          // Job Listings Grid
          LayoutBuilder(
            builder: (context, constraints) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: NeverScrollableScrollPhysics(),
                children: jobs.map((job) => _buildJobCard(job)).toList(),
              );
            },
          ),

          SizedBox(height: 20),

          // Load More Jobs Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.black),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onPressed: () {},
            child: Text("Load More Jobs", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  Widget _buildJobCard(JobItem job) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 1),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(job.logoPath, width: 40, height: 40), // Use asset logo
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  job.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(job.category, style: TextStyle(color: Colors.grey[600])),
          SizedBox(height: 4),
          Row(children: [
            Icon(Icons.location_on, size: 16, color: Colors.grey[700]),
            SizedBox(width: 4),
            Text(job.location, style: TextStyle(color: Colors.grey[700])),
          ]),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.grey[700]),
              SizedBox(width: 4),
              Text("Posted: ${job.postedDate}", style: TextStyle(color: Colors.grey[700])),
              SizedBox(width: 10),
              Icon(Icons.timer, size: 16, color: Colors.grey[700]),
              SizedBox(width: 4),
              Text("Closes: ${job.closingDate}", style: TextStyle(color: Colors.grey[700])),
            ],
          ),
          Spacer(),
          SizedBox(height: 8),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.black,
          //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          //   ),
          //   onPressed: () {
          //     Navigator.push(ctx, MaterialPageRoute(builder: (context) => JobDetailsPage(),));
          //   },
          //   child: Center(child: Text("Apply Now", style: TextStyle(color: Colors.white))),
          // ),

   ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            onPressed: () {
              showDialog(
                context: ctx,
                builder: (ctx) => CustomAlertDialog(
                  child: JobDetailsPage(),
                ),
              );
            },
            child: Center(child: Text("Apply Now", style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    );
  }
}

// Job Item Model
class JobItem {
  final String title;
  final String category;
  final String location;
  final String postedDate;
  final String closingDate;
  final String logoPath;

  JobItem(this.title, this.category, this.location, this.postedDate, this.closingDate, this.logoPath);
}
