import 'package:cloud_firestore/cloud_firestore.dart';

class CommentModel {
  String customerName;
  String comment;
  Timestamp time;
  double rating;

  CommentModel({this.customerName, this.comment, this.time, this.rating});

  CommentModel.fromJson(Map<String, dynamic> json) {
    customerName = json['customerName'];
    comment = json['comment'];
    time = json['time'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customerName'] = this.customerName;
    data['comment'] = this.comment;
    data['time'] = this.time;
    data['rating'] = this.rating;
    return data;
  }
}
