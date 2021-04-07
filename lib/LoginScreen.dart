



import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'package:login_signuup_screens/SignupScreen.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:[
            Padding(
              padding: const EdgeInsets.only(left:20,top: 60),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Welcome,",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 31),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Sign in to continue!,",

                  style: TextStyle(fontSize: 27,color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),

            Padding(
              padding: const EdgeInsets.only(left:18.0,right: 18),
              child: TextField(
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
              child: TextField(
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                obscureText: true,
                decoration: InputDecoration(
                  

                    labelText: "Password",
                 border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: new BorderSide(color: Colors.teal)
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
           height: 50,
         ),

         Container(
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
               child: Text("Login",
               style: TextStyle(color: Colors.white),
               ),
             ),
             // style: ButtonStyle(
             //   backgroundColor: MaterialStateProperty.all<Color>(Color(0xfff4325c)),
             // ),
           ),
         ),
            SizedBox(
              height: 25,
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
                 padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 10),
                 child: Text(
                   "Connect With facebook",
                   style: TextStyle(color: Colors.white),
                 ),
               ),
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all<Color>(Color(0xfff4325c)),
                // ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I'm a new user"),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                  },
                  child: Text("Sign Up",
                  style: TextStyle(color: Color(0xfff4325c),fontWeight: FontWeight.bold),
                  ),

                )
              ],

            ),




        ],
        ),
      ),
    );
        }
}
