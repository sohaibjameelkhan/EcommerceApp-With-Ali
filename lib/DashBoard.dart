



import 'package:flutter/material.dart';
import 'package:login_signuup_screens/Constants/Colors.dart';
import 'Constants/Colors.dart';


class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyAppColors.appColor,
        title: Text("DashBoard",style: TextStyle(color: Colors.white,),),

        leading: Icon(
          Icons.blur_on

        ),
        actions: [
          Icon(
            Icons.notifications_none
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15),
            child: Icon(
              Icons.exit_to_app_outlined,
            ),
          ),
        ],
      ),

      body: Column(
        children: [
        SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "My Products",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            )),
      ),
      SizedBox(
        height: 10,
      ),
     Expanded(
       child: ListView.builder(
        itemCount: 10,
          shrinkWrap: true,

          physics: BouncingScrollPhysics(),
          itemBuilder: (context, i){
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,),
            child: Card(
                elevation: 4,

                child: ListTile(


                  title: Text("Apple"),
                  subtitle: Text("Price: \$15"),

                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset("Assets/Images/OnBoardingScreen/watches.png"),
                  ),

                  trailing: Row(

                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.edit,color: Colors.blue,),
                      Icon(Icons.delete,color: Colors.red,),

                    ],
                  ),

                ),
              ),
          );
          }

    ),
     ),
      ],
    ),
    );
  }
}
