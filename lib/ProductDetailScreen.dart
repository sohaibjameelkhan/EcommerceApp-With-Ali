import 'package:flutter/material.dart';
import 'Constants/Colors.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [
            Container(
              color: Colors.white10,
              height: 400,
              width: 400,
              child: Card(
                color: Colors.white70,
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
                            padding: const EdgeInsets.only(left: 80),
                            child: Text("Product Detail",style: TextStyle(
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
                    Text("Wrist Watches",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),),
                    Image.asset("Assets/Images/DashboardScreen/watches.png",height: 200,width: 200,),

                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Row(
                        children: [
                          Card(
                            elevation:4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.remove,
                            ),
                          ),
                          Text("   1   ",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,

                          ),),
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    )



                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:28.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:40.0),
                    child: Image.asset("Assets/Images/DashboardScreen/flame.png",height: 40,width: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: Image.asset("Assets/Images/DashboardScreen/alarm-clock.png",height: 40,width: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: Image.asset("Assets/Images/DashboardScreen/star.png",height: 40,width: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: Image.asset("Assets/Images/DashboardScreen/weighing-machine.png",height: 40,width: 40,),
                  ),
                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:28.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:40.0),
                    child: Text("130 cal",style: TextStyle(
                    fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:40.0),
                    child: Text("15-20 min",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),),
                  ),
                  Padding(

                    padding: const EdgeInsets.only(left:20.0),
                    child: Text("4.9 vote",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:30.0),
                    child: Text("350 Kg",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,

                    ),),
                  ),
                ],

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:18.0,left:30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Description",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("It is made up of leather and this is  "
                  "smart watch and it is very useful for time "
                  "and for running and for heartbeat.",style: TextStyle(

             color: Colors.grey,
              ),),
            ),
 
            
            SizedBox(
              height: 30,
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
                          child: Text("Add To Cart",style: TextStyle(
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
