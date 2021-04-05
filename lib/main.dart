import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'Product.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );


  }
}
