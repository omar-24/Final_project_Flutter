import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/authentication/presentation/views/splash_screen.dart';
import 'package:final_project/features/home/presentation/views/home_screen.dart';
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
        return MaterialApp.router(
          routerConfig: Approuter.router,
          debugShowCheckedModeBanner: false,
        );
      },
      child: HomeScreen(),
    );
  }
}
