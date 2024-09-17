import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Greenbotton extends StatelessWidget {
  final String text;
  final VoidCallback ONTAP;

  const Greenbotton({Key? key, required this.text, required this.ONTAP}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: ONTAP,
          style: ElevatedButton.styleFrom(
              //fixedSize:Size(423.w, 50.h),
              fixedSize:Size(423, 50),
              backgroundColor: Color(0xFF20473E),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(text, style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: 15),)),
    );
  }
}
