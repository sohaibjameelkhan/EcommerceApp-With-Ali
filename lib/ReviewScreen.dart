import 'package:flutter/material.dart';
import 'package:login_signuup_screens/UserDashBoard.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'Constants/Colors.dart';
import 'addCommentToProduct.dart';

class ReviewScreen extends StatelessWidget {
  final String productID;
  final double productRating;

  ReviewScreen(this.productID, this.productRating);
  @override
  Widget build(BuildContext context) {
    print(productID);
    return WillPopScope(
      onWillPop: () {
        return Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => UserDashBoard()));
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: MyAppColors.appColor,
          title: Text(
            "Customer Reviews",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddReview(productID, productRating)));
            }, label: Text("Add Review")),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Customer Reviews",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Card(
                        elevation: 4,
                        child: Expanded(
                          child: ListTile(
                            title: Row(
                              children: [
                                Text(
                                  "Sohaib",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " - 2 Days ago",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                SmoothStarRating(
                                    allowHalfRating: false,
                                    onRated: (v) {},
                                    starCount: 5,
                                    rating: 5,
                                    size: 15.0,
                                    isReadOnly: true,
                                    color: MyAppColors.appColor,
                                    borderColor: Colors.yellow,
                                    spacing: 0.0),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "(5)",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            subtitle:
                                Text("The Product is very Amazing i like it."),
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Image.asset(
                                "Assets/Images/DashboardScreen/watches.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
