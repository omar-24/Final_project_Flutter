import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/material.dart';

class EventdetailsBody extends StatelessWidget {
  const EventdetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [BoxShadow()]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Details",
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Comfortaa",
                color: Colors.deepOrange),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "We will learn how to make ceramics and use them \nafter that",
                style: Fonts.H6FontsNormal,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "The workshop will last for one day and last 3 hours.\nWe will learn about it",
                style:  Fonts.H6FontsNormal,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "We will learn about the types of clay to differentiate\nthe final result of the product",
                style:  Fonts.H6FontsNormal,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "How do I make shapes with clay without them\n cracking?",
                style:  Fonts.H6FontsNormal,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 15,
                color: Colors.deepOrange,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "We will burn the shapes we made and find out how \nthey burnso that you can use them after that and \nlive with you",
                style:  Fonts.H6FontsNormal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
