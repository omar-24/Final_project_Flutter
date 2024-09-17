import 'package:flutter/material.dart';

import '../../../../../core/assets/auth_assets.dart';

class BookingReviewbox1 extends StatelessWidget {
  const BookingReviewbox1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(HomeAssets.background),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Training room",
                style:
                TextStyle(fontSize: 17, fontFamily: "Comfortaa"),
              ),
              Text(
                "inside",
                style: TextStyle(
                    color: Color(0xFF555555),
                    fontFamily: "Comfortaa"),
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
