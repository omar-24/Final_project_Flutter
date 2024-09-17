import 'package:flutter/material.dart';


class Amorpm extends StatelessWidget {
  const Amorpm({Key? key, required this.isitAm}) : super(key: key);
  final bool isitAm;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child:Text(
          isitAm?"AM":"PM",
          style: TextStyle(
            fontFamily: "Comfortaa",
            fontSize:isitAm?18:18 ,
            color: isitAm?Colors.black:Colors.black,
          ),
        ) ,
      ) ,
    );
  }
}
