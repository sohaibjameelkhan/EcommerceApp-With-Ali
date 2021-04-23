import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';

class UserCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [
            Container(
              height: 550,
              width: 400,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      child: Row(

                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            child: Card(
                              elevation: 4,


                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:4.0,left: 4,right: 4,bottom: 4),
                                  child: Icon(
                                    Icons.arrow_back,color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text("My Cart",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,

                            ),),
                          ),


                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    ListTile(

                      title: Text("Wrist Watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),

                      subtitle: Text("Price: \$15",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyAppColors.appColor,
                        fontSize: 17,
                      ),),
                      leading: Container(
                        height: 90,
                        width: 70,
                        child: Card(
                          color: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,

                          child: CircleAvatar(
                              backgroundColor: Colors.white10,
                              child: Image.asset("Assets/Images/DashboardScreen/watches.png",height: 40,width: 40,)),
                        ),
                      ),
                      trailing: Container(
                        height: 50,
                        width: 50,
                        child: Card(
                          color: Colors.white70,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: IconButton(
                            icon: Icon(Icons.highlight_remove),
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 30,
                    ),

                    ListTile(

                      title: Text("Wrist Watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),

                      subtitle: Text("Price: \$15",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyAppColors.appColor,
                        fontSize: 17,
                      ),),
                      leading: Container(
                        height: 90,
                        width: 70,
                        child: Card(
                          color: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,

                          child: CircleAvatar(
                            backgroundColor: Colors.white10,

                              child: Image.asset("Assets/Images/DashboardScreen/watches.png",height: 40,width: 40,)),
                        ),
                      ),
                      trailing: Container(
                        height: 50,
                        width: 50,
                        child: Card(
                          color: Colors.white70,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: IconButton(
                            icon: Icon(Icons.highlight_remove),
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 30,
                    ),

                    ListTile(

                      title: Text("Wrist Watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),

                      subtitle: Text("Price: \$15",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyAppColors.appColor,
                        fontSize: 17,
                      ),),
                      leading: Container(
                        height: 90,
                        width: 70,
                        child: Card(
                          
                          color: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 4,

                          child: CircleAvatar(
                            backgroundColor: Colors.white10,
                              child: Image.asset("Assets/Images/DashboardScreen/watches.png",height: 40,width: 40,)),
                        ),
                      ),
                      trailing: Container(
                        height: 50,
                        width: 50,
                        child: Card(
                          color: Colors.white70,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),

                          child: IconButton(

                            icon: Icon(Icons.highlight_remove),
                          ),
                        ),
                      ),

                    ),

                  ],
                ),
              ),



            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("Total Price",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("\$33,50",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:78.0),
                    child: Container(
                      
                      height: 50,
                      width: 170,

                      child: Card(
                        elevation: 4,
                        color: MyAppColors.appColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: TextButton(
                          child: Text("Next",style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),

                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),


      ),

    );
  }
}
