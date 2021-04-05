



import 'package:flutter/material.dart';

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
           height: 50,
         ),

         TextButton(
           onPressed: () {},

           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 148,vertical: 10),
             child: Text("Login",
             style: TextStyle(color: Colors.white),
             ),
           ),
           style: ButtonStyle(
             backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
           ),
         ),
            SizedBox(
              height: 25,
            ),


            TextButton.icon(
              onPressed: () {},
             icon: Icon(

               Icons.motorcycle_outlined,
               color: Colors.white,
             ),
             label: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 85,vertical: 10),
               child: Text(
                 "Connect to facebook",
                 style: TextStyle(color: Colors.white),
               ),
             ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
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
                  onTap: (){},
                  child: Text("Sign Up",
                  style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold),
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
