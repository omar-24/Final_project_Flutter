import 'package:final_project/features/authentication/presentation/views/forgetpasswordScreen.dart';
import 'package:final_project/features/authentication/presentation/views/loginScreen.dart';
import 'package:final_project/features/authentication/presentation/views/signupScreen.dart';
import 'package:final_project/features/authentication/presentation/views/verficationScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const finalApp());
}

class finalApp extends StatelessWidget {
  const finalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return MaterialApp(
          home:child,
        );
      },
      child: Signupscreen()
    );
  }
}
