import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';


class UserDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello Sohaib!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: Colors.grey),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.grey,
                        child: Image.asset(
                          "Assets/Images/CustomerReviewScreen/man2.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Today",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Special For You",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black),
                    )),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Container(
                      height: 60,
                      width: 300,
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(

                          decoration: InputDecoration(
                              labelText: "Search",
                              disabledBorder: InputBorder.none,

                              prefixIcon: Icon(Icons.search_rounded,color: MyAppColors.appColor,),
                              border: InputBorder.none,

                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:10.0,right: 10),
                    child: Container(
                      height: 65,
                      width: 65,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Icon(
                          Icons.drag_handle,color: MyAppColors.appColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),


              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 15),
                    child: Container(
                      height: 40,
                      width: 80,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Align(alignment: Alignment.center,child: Text("Foods")),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10),
                    child: Container(
                      height: 40,
                      width: 80,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(alignment:Alignment.center,child: Text("Fruits")),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10),
                    child: Container(
                      height: 40,
                      width: 80,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(alignment: Alignment.center,child: Text("Drinks")),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10),
                    child: Container(
                      height: 40,
                      width: 80,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(alignment:Alignment.center,child: Text("Others")),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
             Padding(
               padding: const EdgeInsets.only(left:14.0),
               child: Row(
                 children: [

                   Padding(
                     padding: const EdgeInsets.only(right:20.0),
                     child: Card(

                       child: Container(
                                height: 160,
                                width: 160,
                                decoration:
                                BoxDecoration(border: Border.all(color: Colors.grey[300])),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                         Padding(
                                           padding: const EdgeInsets.only(top:4.0,left: 10),
                                           child: Image.asset("Assets/Images/DashboardScreen/emptyheart.png",height: 20,),
                                         ),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey[350],
                                      ),
                                      child: Image.asset(
                                        "Assets/Images/DashboardScreen/watches.png",
                                        height: 70,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text("Brown Belt"),
                                              SmoothStarRating(
                                                  allowHalfRating: false,
                                                  onRated: (v) {},
                                                  starCount: 5,
                                                  rating: 5,
                                                  size: 15.0,
                                                  isReadOnly: true,
                                                  color: MyAppColors.appColor,
                                                  borderColor: Colors.yellow,
                                                  spacing: 0.0)
                                            ],
                                          ),
                                          Text(
                                            "\$12",
                                            style: TextStyle(fontWeight: FontWeight.bold,color: MyAppColors.appColor),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                     ),
                   ),

                   Padding(
                     padding: const EdgeInsets.only(right:10.0),
                     child: Card(
                       child: Container(
                         height: 160,
                         width: 160,
                         decoration:
                         BoxDecoration(border: Border.all(color: Colors.grey[300])),
                         child: Column(
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:4.0,left: 10),
                                    child: Image.asset("Assets/Images/DashboardScreen/fillheart.png",height: 20,),
                                  ),
                               ],
                             ),
                             Container(
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.grey[350],
                               ),
                               child: Image.asset(
                                 "Assets/Images/DashboardScreen/watches.png",
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 12.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Column(
                                     children: [
                                       Text("Brown Belt"),
                                       SmoothStarRating(
                                           allowHalfRating: false,
                                           onRated: (v) {},
                                           starCount: 5,
                                           rating: 5,
                                           size: 15.0,
                                           isReadOnly: true,
                                           color: MyAppColors.appColor,
                                           borderColor: Colors.yellow,
                                           spacing: 0.0)
                                     ],
                                   ),
                                   Text(
                                     "\$12",
                                     style: TextStyle(fontWeight: FontWeight.bold,color: MyAppColors.appColor),
                                   )
                                 ],
                               ),
                             )
                           ],
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),

              Padding(
                padding: const EdgeInsets.only(left:14.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:20.0),
                      child: Card(
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey[300])),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top:4.0,left: 10),
                                   child: Image.asset("Assets/Images/DashboardScreen/emptyheart.png",height: 20,),
                                 ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[350],
                                ),
                                child: Image.asset(
                                  "Assets/Images/DashboardScreen/watches.png",
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text("Brown Belt"),
                                        SmoothStarRating(
                                            allowHalfRating: false,
                                            onRated: (v) {},
                                            starCount: 5,
                                            rating: 5,
                                            size: 15.0,
                                            isReadOnly: true,
                                            color: MyAppColors.appColor,
                                            borderColor: Colors.yellow,
                                            spacing: 0.0)
                                      ],
                                    ),
                                    Text(
                                      "\$12",
                                      style: TextStyle(fontWeight: FontWeight.bold,color: MyAppColors.appColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right:10.0),
                      child: Card(
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey[300])),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top:4.0,left: 10),
                                     child: Image.asset("Assets/Images/DashboardScreen/emptyheart.png",height: 20,),
                                   ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[350],
                                ),
                                child: Image.asset(
                                  "Assets/Images/DashboardScreen/watches.png",
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text("Brown Belt"),
                                        SmoothStarRating(
                                            allowHalfRating: false,
                                            onRated: (v) {},
                                            starCount: 5,
                                            rating: 5,
                                            size: 15.0,
                                            isReadOnly: true,
                                            color: MyAppColors.appColor,
                                            borderColor: Colors.yellow,
                                            spacing: 0.0)
                                      ],
                                    ),
                                    Text(
                                      "\$12",
                                      style: TextStyle(fontWeight: FontWeight.bold,color: MyAppColors.appColor),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),




            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
      //  selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
       // onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
           activeColor: MyAppColors.appColor,
           textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Image.asset("Assets/Images/DashboardScreen/emptyheart.png",height: 25,),
            title: Text('Users'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text(
              'Messages test for mes teset test test ',
            ),
            activeColor: MyAppColors.appColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Settings'),
            activeColor: MyAppColors.appColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),


    );
  }
}
