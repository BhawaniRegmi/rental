import 'package:easy_grab/utils/myColors.dart';
import 'package:flutter/material.dart';


class BannerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width, // Sets width based on screen size
        height: 550,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            
            image: AssetImage("assets/image/easyBanner.jpg"), 
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50,100,0,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text("Quick Service",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("We Delivering More ",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold, color: MyColors.whiteColor)),
                             Text("Than Packages",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold, color: MyColors.primaryBlue)),
                            
                  ],
                ),
                Text("We Deliver Trust!",
                    style: TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold, color: Colors.yellow.shade700)),
                SizedBox(height: 10),
                Text("Quick, Safe, and Hassle-Free Deliveries!",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                SizedBox(height: 20),
           ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryOrange,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Calculate Package",
              style: TextStyle(color: MyColors.whiteColor),
            ),
            SizedBox(width: 8), // Add some space between the text and the icon
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ],
                ),
              )
              ],
          ),
        ),
      ),
    );
  }
}



