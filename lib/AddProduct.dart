import 'dart:io';
import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_signuup_screens/DashBoard.dart';
import 'UserDashBoard.dart';
import 'helper.dart';
import 'package:image_picker/image_picker.dart';

class AddProduct extends StatefulWidget {
  final bool isUpdateMode;
  final QueryDocumentSnapshot snapshot;

  AddProduct({this.isUpdateMode, this.snapshot});

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  File _image;
  Future getImage() async{
    final image= await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image =image;
    });
  }


  @override
  void initState() {
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

                      child: (_image != null)
                          ? Image.file(_image)
                          : Image.asset("Assets/Images/CustomerReviewScreen/man2.png"),
                    ),
                    Positioned.fill(
                      top: -50,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 40,
                          width: 40,
                          child: IconButton(

                          icon: Icon(
                            Icons.camera_alt,
                            size: 19,
                          ),
                            onPressed: getImage,
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
                      FirebaseFirestore.instance.collection('productData').add({
                        'productName': _nameController.text,
                        'productPrice': _priceController.text,
                        'productDescription': _descriptionController.text,
                        'uid': getUserID()

                      }).whenComplete(() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashBoardScreen())));
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
