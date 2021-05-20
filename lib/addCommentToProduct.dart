import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:login_signuup_screens/UserDashBoard.dart';
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
  double avgRating = 0.0;
  TextEditingController _commentController = TextEditingController();

  List<CommentModel> _list = [];
  int arrayLength = 0;
  List data = [];

  @override
  void initState() {
    FirebaseFirestore.instance.collection('productData').get().then((value) {
      value.docs.map((e) {
        data.add(e['feedBack']);
        setState(() {});
      }).toList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.avgRating);
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Review"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _commentController,
            decoration: InputDecoration(labelText: "Add Comment/Reveiw"),
          ),
          SizedBox(
            height: 20,
          ),
          SmoothStarRating(
              allowHalfRating: false,
              onRated: (v) {
                rating = v;
              },
              starCount: 5,
              rating: rating,
              size: 40.0,
              isReadOnly: false,
              color: Colors.green,
              borderColor: Colors.green,
              spacing: 0.0),
          SizedBox(
            height: 20,
          ),

          RaisedButton(
            onPressed: () {
              FirebaseFirestore.instance
                  .collection('productData')
                  .doc(widget.productID)
                  .update(
                {
                  'feedBack': FieldValue.arrayUnion([
                    CommentModel(
                            comment: _commentController.text,
                            customerName: "Ali",
                            time: Timestamp.now(),
                            rating: rating)
                        .toJson()
                  ]),
                  'avgRating': getAvgRating()
                }, //
//
              ).whenComplete(() {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Thanks for your feedback."),
                        actions: [
                          FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UserDashBoard()));
                              },
                              child: Text("Okay"))
                        ],
                      );
                    });
              });
            },
            child: Text("Post Review for product"),
          )
        ],
      ),
    );
  }

  double getAvgRating() {
    if (data == null) {

      double calculatedRating = (widget.avgRating + rating) / 1;
      return calculatedRating;
    } else {
      var length = data.length + 1;
      double calculatedRating = (widget.avgRating + rating);
      return calculatedRating/length;
    }
  }
}
