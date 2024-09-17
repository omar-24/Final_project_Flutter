import 'package:flutter/material.dart';

class BookingReviewbox extends StatelessWidget {
  const BookingReviewbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Booking Details",
                style: TextStyle(fontSize: 16, fontFamily: "Comfortaa"),
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 12,
                  ),
                  Text("Tus, 13 Feb 2024 04:00 PM",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Comfortaa",
                          color: Color(0xFF464646))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 12,
                  ),
                  Text("Tus, 13 Feb 2024 10:00 PM",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Comfortaa",
                          color: Color(0xFF464646))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 12,
                  ),
                  Text("Tus, 13 Feb 2024 10:00 PM",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Comfortaa",
                          color: Color(0xFF464646))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 12,
                  ),
                  Text("Tus, 13 Feb 2024 10:00 PM",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Comfortaa",
                          color: Color(0xFF464646))),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Icon(
                    Icons.chair,
                    size: 15,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1 Seat",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Change",
              style: TextStyle(color: Colors.red),
            ),
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.deepOrange.withOpacity(.3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ],
      ),
    );
  }
}
