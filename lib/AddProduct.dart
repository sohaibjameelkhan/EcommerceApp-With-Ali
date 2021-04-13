import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';

class AddProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: MyAppColors.appColor,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0,bottom: 30),
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
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: TextFormField(
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(

                  labelText: "Add Product Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    )

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              child: TextFormField(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(

                    labelText: "Add Product Price",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: TextFormField(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(

                    labelText: "Add Product Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              child: TextFormField(
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                decoration: InputDecoration(

                    labelText: "Add Product Quantity",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:28.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: LinearGradient(
                      colors: [MyAppColors.appColor,MyAppColors.appColor,Color(0xff3f3d56)],
                    )
                ),
                child: TextButton(
                  onPressed: () {},

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 148,vertical: 10),
                    child: Text("Add",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all<Color>(Color(0xfff4325c)),
                  // ),
                ),
              ),
            ),

          ],


        ),

      ),

    );
  }
}