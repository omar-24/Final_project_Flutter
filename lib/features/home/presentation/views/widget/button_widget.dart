import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  const ButtonWidget({
    super.key, required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 110.w,
        height: 48.h,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          mini: true,
          child: Text(buttonText, style: Fonts.buttonText,),
          backgroundColor: Colors.red.withOpacity(0.90),
          onPressed: (){},

        ),
      ),
    );
  }
}