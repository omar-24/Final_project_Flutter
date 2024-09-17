import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custombotton extends StatelessWidget {
  final String text;
  final VoidCallback ONTAP;
  final Color textcolor;
  final Color backcolor;

  const Custombotton({Key? key, required this.text, required this.ONTAP, required this.textcolor, required this.backcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: ONTAP,
          style: ElevatedButton.styleFrom(
              fixedSize:Size(423, 50),
              backgroundColor: backcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(text, style: TextStyle(color:textcolor,fontFamily: 'Comfortaa',fontSize: 15),)),
    );
  }
}
