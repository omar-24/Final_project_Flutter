import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/onboarding_assets.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/authentication/presentation/views/loginScreen.dart';
import 'package:final_project/features/authentication/presentation/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initLogoAnimation();
    Timer(const Duration(seconds: 3), () {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      //   return const OnboardingScreen();
      // }));

      GoRouter.of(context).pushReplacement(
        Approuter.OnboardingPath,
      );
    });
  }
  @override
  void dispose()
  {
    super.dispose();
    animationController.dispose();
  }
  void initLogoAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation =
        Tween<Offset>(begin: const Offset(0, 4), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(OnboardingAssets.splash),
            fit: BoxFit.cover,
          )
        ),
        child: SlideTransition(
          position: animation,
          child: Center(
            child: Image.asset(AuthAssets.logo),
          ),
        ),
      ),
    );
  }
}
