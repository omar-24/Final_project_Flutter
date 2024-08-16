import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Greenbottom extends StatelessWidget {
  final String text;
  final VoidCallback ONTAP;

  const Greenbottom({Key? key, required this.text, required this.ONTAP}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: ONTAP,
          style: ElevatedButton.styleFrom(
              fixedSize:Size(423.w, 50.h),
              backgroundColor: Color(0xFF20473E),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(text, style: TextStyle(color: Colors.white),)),
    );
  }
}
