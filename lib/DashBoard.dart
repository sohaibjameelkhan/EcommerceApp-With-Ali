import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login_signuup_screens/AddProduct.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'package:login_signuup_screens/ProfileScreen.dart';
import 'package:login_signuup_screens/SignupScreen.dart';
import 'package:login_signuup_screens/UserDashBoard.dart';
import 'package:login_signuup_screens/diplayReviewsOnOwnerScreen.dart';
import 'package:login_signuup_screens/updateProduct.dart';

import 'Constants/Colors.dart';
import 'diplayReviewsOnOwnerScreen.dart';
import 'SignupScreen.dart';
import 'helper.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyAppColors.appColor,
        title: Text(
          "DashBoard",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.blur_on,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AddProduct()));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: IconButton(
              icon: Icon(
                Icons.exit_to_app_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => UserDashBoard()));
              },
            ),
          ),
        ],
      ),
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
                  "My Products",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            ///First of all we have added stream builder for real time data changes in db
            child: StreamBuilder(
              ///Stream: Stream is basically a point in db from where we are gettin data
              stream: FirebaseFirestore.instance
                  .collection('productData')
                  .where('uid', isEqualTo: getUserID())
                  .snapshots(),
              builder: (context, snapshot) {
                ///We have to put validation to check if our snapshot has data
                ///In other we will display circular  progress indicator
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.docs.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => DisplayReviews()));

                            },


                            child: Card(
                              elevation: 4,
                              child: ListTile(
                                title: Text(
                                    snapshot.data.docs[i].data()['productName']),
                                subtitle: Text(
                                    "Price: \$${snapshot.data.docs[i].data()['productPrice']}"),
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(

                                      image: NetworkImage(
                                          snapshot.data.docs[i].data()['productImageUrl']
                                      ),
                                      fit: BoxFit.cover,

                                    ),



                                  ),

                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        ///For update product we have to pass product data along with product id to update product screen
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => UpdateProduct(
                                                    productID: snapshot.data.docs[i].id,

                                                  productName: snapshot.data.docs[i].data()['productName'],
                                                  productDescription: snapshot.data.docs[i].data()['productDescription'],
                                                  productPrice: snapshot.data.docs[i].data()['productPrice'],
                                                    )));
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {
                                        deleteProduct(snapshot.data.docs[i].id);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  //delete product
  deleteProduct(String productID) {
    ///For delete product we have to pass product id to db so that it can delete specific product
    FirebaseFirestore.instance
        .collection('productData')
        .doc(productID)
        .delete()
        .whenComplete(() {});
  }
}
