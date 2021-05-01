import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login_signuup_screens/model/commentModel.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AddReview extends StatefulWidget {
  final double avgRating;
  final String productID;
  AddReview(this.productID, this.avgRating);

  @override
  _AddReviewState createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  double rating = 0.0;
  double avgRating =0.0;
  TextEditingController _commentController = TextEditingController();

  List<CommentModel> _list = [];



  @override
  Widget build(BuildContext context) {
    print(widget.avgRating);
    return Scaffold(
      appBar: AppBar(title: Text("Add Review"),),
      body: Column(children: [
        TextFormField(
          controller: _commentController,
          decoration: InputDecoration(
              labelText: "Add Comment/Reveiw"
          ),
        ),
        SizedBox(height: 20,),
        SmoothStarRating(
            allowHalfRating: false,
            onRated: (v) {
            rating = v;
            },
            starCount: 5,
            rating: rating,
            size: 40.0,
            isReadOnly:false,

            color: Colors.green,
            borderColor: Colors.green,
            spacing:0.0
        ),
        SizedBox(height: 20,),

        RaisedButton(onPressed: () {

          FirebaseFirestore.instance.collection('productData')
              .doc(widget.productID)
              .update({
            'feedBack': FieldValue.arrayUnion([CommentModel(
                comment: _commentController.text,
                customerName: "Ali",
                time: Timestamp.now(),
                rating: rating
            ).toJson()]),
            'avgRating': 0.0
          },
//
         );
        }, child: Text("Post Review for product"),)
      ],),
    );
  }
}
