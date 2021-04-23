import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_signuup_screens/DashBoard.dart';
import 'UserDashBoard.dart';
import 'helper.dart';

class UpdateProduct extends StatefulWidget {
  final String productID;
  final String productName;
  final String productPrice;
  final String productDescription;

  UpdateProduct({this.productID,this.productName, this.productDescription, this.productPrice});
  
  


  @override
  _UpdateProductState createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  TextEditingController _nameController;
  TextEditingController _priceController;
  TextEditingController _descriptionController;

  @override
  void initState() {
    ///We have to populate our text editing controllers with speicifid product details
    _nameController = TextEditingController(text: widget.productName);
    _priceController = TextEditingController(text: widget.productPrice);
    _descriptionController = TextEditingController(text: widget.productDescription);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => DashBoardScreen()));
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Product",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
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
                padding: const EdgeInsets.only(top: 0, bottom: 30),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 60,
                      backgroundImage: AssetImage(
                          "Assets/Images/CustomerReviewScreen/man2.png"),
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
                              color: MyAppColors.appColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  controller: _nameController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      labelText: "Add Product Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: TextFormField(
                  controller: _priceController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      labelText: "Add Product Price",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  controller: _descriptionController,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      labelText: "Add Product Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      gradient: LinearGradient(
                        colors: [
                          MyAppColors.appColor,
                          MyAppColors.appColor,
                          Color(0xff3f3d56)
                        ],
                      )),
                  child: TextButton(
                    onPressed: () {
                      ///We have to pass product id to the update product function
                      FirebaseFirestore.instance.collection('productData').doc(widget.productID).update({
                        'productName': _nameController.text,
                        'productPrice': _priceController.text,
                        'productDescription': _descriptionController.text,
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 148, vertical: 10),
                      child: Text(
                        "Add",
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
      ),
    );
  }
}
