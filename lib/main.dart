import 'package:final_project/features/authentication/presentation/views/loginScreen.dart';
import 'package:final_project/features/authentication/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const finalApp());
}

class finalApp extends StatelessWidget {
  const finalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
