import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'LoginScreen.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.only(left:20,top: 60),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Create Account,",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 31),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:20,top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Sign up to get started!,",

                    style: TextStyle(fontSize: 27,color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.only(left:18.0,right: 18),
                child: TextFormField(
                  validator: (val)=>
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
                padding: const EdgeInsets.only(left:18.0,right: 18),
                child: TextFormField(
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
                padding: const EdgeInsets.only(left:18.0,right: 18),
                child: TextFormField(
                  validator: (val) => val.length < 6
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
                padding: const EdgeInsets.only(right:12.0,top: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text("Forgot password?",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
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
                      colors: [MyAppColors.appColor,MyAppColors.appColor,Color(0xff3f3d56)],
                     // begin: FractionalOffset.topLeft,
                     // end: FractionalOffset.bottomLeft,
                    //#ff5f6d → #ffc371
                //      Color(0xffde6262)
                //    Color(0xffffb88c)
                  )
                ),


                child: TextButton(
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                  },


                  child: Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 118,vertical: 10),
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
                    colors: [MyAppColors.appColor,MyAppColors.appColor,Color(0xff3f3d56)],
                  )
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(

                    Icons.motorcycle_outlined,
                    color: Colors.white,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
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
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text("Sign In",
                        style: TextStyle(color: Color(0xfff4325c),fontWeight: FontWeight.bold),
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
}
