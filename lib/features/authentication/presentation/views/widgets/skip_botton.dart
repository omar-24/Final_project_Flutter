import 'package:flutter/material.dart';

import '../../../../../core/assets/fonts.dart';
import '../loginScreen.dart';
class SkipBotton extends StatelessWidget {
  const SkipBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top:40,
        left: 380,
        child: TextButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return const Loginscreen();
          }));
        },child: Text('Skip', style: Fonts.skipFont,),));
  }
}
