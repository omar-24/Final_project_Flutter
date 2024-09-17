import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/material.dart';

class SeatNumber extends StatefulWidget {
  const SeatNumber({Key? key}) : super(key: key);

  @override
  State<SeatNumber> createState() => _SeatNumberState();
}

class _SeatNumberState extends State<SeatNumber> {
  int Seatnum = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.2),
                spreadRadius: 1,
                blurRadius: 3)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.person_pin,
                  size: 26,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Number of seats",
                style: Fonts.H4FontsNormal,
              ),
            ],
          ),
          Row(
            children: [
              FloatingActionButton.small(
                onPressed: () {
                  setState(() {
                    Seatnum<=0?Seatnum:Seatnum--;
                  });
                },
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide( color:Seatnum<=0? Colors.deepOrange.withOpacity(.3):Colors.deepOrange,width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 30, color:Seatnum<=0? Colors.deepOrange.withOpacity(.3):Colors.deepOrange),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("$Seatnum"),
              ),
              FloatingActionButton.small(
                onPressed: () {
                  setState(() {
                    Seatnum++;
                  });
                },
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color:Colors.deepOrange,width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 25, color:Colors.deepOrange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
