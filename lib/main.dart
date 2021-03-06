import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_signuup_screens/AddProduct.dart';
import 'package:login_signuup_screens/Location.dart';
import 'package:login_signuup_screens/OwnerSignup.dart';
import 'package:login_signuup_screens/ProductDetailScreen.dart';
import 'package:login_signuup_screens/UserDashBoard.dart';
import 'package:login_signuup_screens/addCommentToProduct.dart';
import 'package:login_signuup_screens/helper/auth_state.dart';
import 'LoginScreen.dart';
import 'Product.dart';
import 'SignupScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'DashBoard.dart';
import 'ReviewScreen.dart';
import 'ProfileScreen.dart';
import 'OnBoardingScreen.dart';
import 'AddProduct.dart';
import 'UserDashBoard.dart';
import 'UserCart.dart';
import 'ProductDetailScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'ReviewScreen.dart';
import 'divider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;

  @override
  void initState() {
    // TODO: implement initState
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() {
    UserLoginStateHandler.getUserLoggedInSharedPreference().then((value) {
      if(value==null){
        isLoggedIn = false;
      }else{
        isLoggedIn = value;
      }

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnBoardingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color(0xfff4325c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "Assets/Images/SplashScreen/splashlogo.png",
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
