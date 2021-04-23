import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'package:login_signuup_screens/DashBoard.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return  WillPopScope(
        onWillPop: () {
          return Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => DashBoardScreen()));
        },
    child: Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: MyAppColors.appColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10),
            child: Text("Done", style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Stack(
                children: [
                  CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 60,
                 backgroundImage: AssetImage("Assets/Images/CustomerReviewScreen/man2.png"),
                ),
                  Positioned.fill(
                    top: -50,
         child: Align(
  alignment: Alignment.bottomRight,
  child: Container(
    height: 40,
    width: 40,
    child: Icon(
        Icons.camera_alt,
        size: 19,
    ),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyAppColors.appColor
    ),
  ),
),

                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10,top: 30),
              child: Container(
                height: 230,
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12,left: 18,right: 18,bottom: 2),
                    child: Column(
                      children: [
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Name"), Text("Muhammad Sohaib Jameel",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Email"), Text("Sohaibjameel3@gmail.com",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("PhoneNumber"), Text("+92-348-5149-386",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Adress"), Text("Vpo Langer Tehsil Jand",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("DOB",), Text("14-08-2000",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}