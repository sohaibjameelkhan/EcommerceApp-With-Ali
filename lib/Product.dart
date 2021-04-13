import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Products",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 2,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 19,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_vert_outlined,
                size: 19,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
            ),
            itemBuilder: (context, i) {
              return Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[300])),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.more_vert_outlined),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[350],
                      ),
                      child: Image.asset(
                        "Assets/Images/DashboardScreen/watches.png",
                        height: 100,
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
                                  color: Colors.black,
                                  borderColor: Colors.yellow,
                                  spacing: 0.0)
                            ],
                          ),
                          Text(
                            "\$12",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
    );
  }
}
