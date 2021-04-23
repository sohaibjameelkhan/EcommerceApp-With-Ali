import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:10.0,left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,
                          child: Icon(
                            Icons.notifications_none,
                          )
                        ),
                      ),
                      Padding(
                       padding: const EdgeInsets.only(left:200.0,right: 10),
                       child: Text("Sohaib",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 19,
                       ),),
                     ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Image.asset("Assets/Images/CustomerReviewScreen/man2.png",height: 30,width: 30,),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Browse",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Container(
                          height: 55,
                          width: 280,
                          child: TextFormField(

                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top:10),
                              hintText: "Search Stores",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(

                              ),
                              prefixIcon: Icon(
                                Icons.search_sharp,color: Colors.black,
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset("Assets/Images/DashboardScreen/target.png",height: 5,width: 5,),
                              ),
                              )
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0,bottom: 10),
                      child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                        height: 48,
                        width: 48,

                        child: Icon(
                          Icons.filter_alt_rounded,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(right:20.0),
                          child: Text("See All >>",style: TextStyle(
                            color: Colors.green,
                          ),),
                        ),
                      ],
                    ),
                  ),
                ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                      height: 120,
                        child: ListView.builder(
                           scrollDirection: Axis.horizontal,

                            itemCount: 6,
                            shrinkWrap: true,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(

                                  child: Column(
                                    children: [
                                      Container(
                                        child: Align(
                                          child: Image.asset(
                                            "Assets/Images/DashboardScreen/shopping-bag.png",
                                            height: 65, width: 65,),
                                        ),

                                        decoration: BoxDecoration(
                                          color: Colors.lightGreen,
                                          border: Border.all(),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        height: 80,
                                        width: 80,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:15.0),
                                        child: Text("All", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ),
                                    ],
                                  ),

                                ),
                              );
                            }
                        ),
                      ),
                SizedBox(
                    height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Hot Sellers",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                  Container(
                    height: 130,
                    child: ListView.builder(

             scrollDirection: Axis.horizontal,

             itemCount: 10,
          shrinkWrap: true,
             itemBuilder: (context, i) {
     return  Padding(
       padding: const EdgeInsets.only(bottom:15.0,left: 10,right: 10,top: 10),
       child: Container(
          height: 100,
          width: 360,

          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
           child: Row(
            children: [
              Image.asset(
                "Assets/Images/DashboardScreen/images.jpeg", height: 165,
                width: 150,),
              Column(
                children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Row(

                        children: [
                          Text("Store Title", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: SmoothStarRating(
                                allowHalfRating: false,
                                onRated: (v) {},
                                starCount: 5,
                                rating: 5,
                                size: 15.0,
                                isReadOnly: true,
                                color: Colors.orange,
                                borderColor: Colors.yellow,
                                spacing: 0.0),
                          ),
                          Text("(5)", style: TextStyle(
                              color: Colors.black,
                              fontSize: 13
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 68.0),
                      child: Text("Breakfast & Dairy", style: TextStyle(
                          color: Colors.black,
                          fontSize: 13
                      ),),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 10,

                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("2 Min Orders", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                          ),),
                          SizedBox(
                            width: 10,
                          ),

                          Container(
                            height: 10,
                            width: 10,

                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("20 Min Dur ", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                          ),),

                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("20 Minss estima deleivery.", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13
                        ),),
                      ],
                    )
                ],
              ),
            ],
           ),
       ),
     );
    }
    ),
                  ),

              ],
            ),
          ),
        ),
    );
  }
}
