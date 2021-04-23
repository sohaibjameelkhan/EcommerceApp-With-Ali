import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'package:login_signuup_screens/DashBoard.dart';
import 'LoginScreen.dart';
import 'DashBoard.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'UserDashBoard.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  makeLoadingTrue() {
    isLoading = true;
    setState(() {});
  }

  makeLoadingFalse() {
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingOverlay(
        isLoading: isLoading,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 60),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Create Account,",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Sign up to get started!,",

                    style: TextStyle(fontSize: 27, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: TextFormField(

                  validator: (val) =>
                  val.isEmpty ? "Please Write Your Name" : null,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: TextFormField(
                  controller: _emailController,
                  validator: (val) =>
                  val.isEmpty ? "Email cannot be empty" : null,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      labelText: "Email Id",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: TextFormField(
                  controller: _pwdController,
                  validator: (val) =>
                  val.length < 6
                      ? "Password length should be more than 6 chars."
                      : null,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  obscureText: true,
                  decoration: InputDecoration(

                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),


                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(right: 12.0, top: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text("Forgot password?",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: LinearGradient(
                      colors: [
                        MyAppColors.appColor,
                        MyAppColors.appColor,
                        Color(0xff3f3d56)
                      ],
                      // begin: FractionalOffset.topLeft,
                      // end: FractionalOffset.bottomLeft,
                      //#ff5f6d → #ffc371
                      //      Color(0xffde6262)
                      //    Color(0xffffb88c)
                    )
                ),


                child: TextButton(
                  onPressed: () {
                    _signUpUser(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
                    // if (!_formKey.currentState.validate()) {
                    //   return;
                    // }
                  },


                  child: Padding(

                    padding: const EdgeInsets.symmetric(
                        horizontal: 118, vertical: 10),
                    child: Text("Create Account",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // style: ButtonStyle(
                  //
                  //
                  //
                  //   backgroundColor: MaterialStateProperty.all<Color>(Color(
                  //       0xffff5f6d)),
                  // ),

                ),
              ),
              SizedBox(
                height: 20,
              ),


              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: LinearGradient(
                      colors: [
                        MyAppColors.appColor,
                        MyAppColors.appColor,
                        Color(0xff3f3d56)
                      ],
                    )
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(

                    Icons.motorcycle_outlined,
                    color: Colors.white,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 10),
                    child: Text(
                      "Connect with facebook",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // style: ButtonStyle(
                  //   backgroundColor: MaterialStateProperty.all<Color>(Color(0xfff4325c)),
                  // ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("I'm a new user"),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: Text("Sign In",
                        style: TextStyle(color: Color(0xfff4325c),
                            fontWeight: FontWeight.bold),
                      ),

                    )
                  ],

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  _signUpUser(BuildContext context) async {
    makeLoadingTrue();
    try {
      ///This will allow user to register in firebase
      return await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: _emailController.text, password: _pwdController.text)
          .whenComplete(() => makeLoadingFalse())
          .then((value) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserDashBoard()));
        return showDialog<void>(
          context: context,
          barrierDismissible: false,
          // false = user must tap button, true = tap outside dialog
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: Text('Message!'),
              content: Text("Registered successfully"),
              actions: <Widget>[
                FlatButton(
                  child: Text('Okay'),
                  onPressed: () {
                    Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                  },
                ),
              ],
            );
          },
        );
      });
    } on FirebaseAuthException catch (e) {
      makeLoadingFalse();
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        // false = user must tap button, true = tap outside dialog
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: Text('ALert!'),
            content: Text(e.message),
            actions: <Widget>[
              FlatButton(
                child: Text('Okay'),
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                },
              ),
            ],
          );
        },
      );
    }
  }
}

