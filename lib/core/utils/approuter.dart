import 'package:final_project/features/authentication/presentation/views/forgetpasswordScreen.dart';
import 'package:final_project/features/authentication/presentation/views/loginScreen.dart';
import 'package:final_project/features/authentication/presentation/views/signupScreen.dart';
import 'package:final_project/features/authentication/presentation/views/splash_screen.dart';
import 'package:final_project/features/authentication/presentation/views/verficationScreen.dart';
import 'package:final_project/features/home/presentation/views/home_screen.dart';
import 'package:final_project/features/home/presentation/views/widget/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/authentication/presentation/views/onboarding_screen.dart';

abstract class Approuter{
  static const OnboardingPath="/onboarding";
  static const LoginPath="/login";
  static const SignupPath="/signup";
  static const ForgetPath="/forgetpassword";
  static const VervicationPath="/verfication";
  static const HomePath="/home";
  static const DrawerPath="/Drawer";


  static final router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: OnboardingPath,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: LoginPath,
        builder: (context, state) => const Loginscreen(),
      ),
      GoRoute(
        path: SignupPath,
        builder: (context, state) => const Signupscreen(),
      ),
      GoRoute(
        path: ForgetPath,
        builder: (context, state) => const Forgetpasswordscreen(),
      ),
      GoRoute(
        path: VervicationPath,
        builder: (context, state) => const Verficationscreen(),
      ),
      GoRoute(
        path: HomePath,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: DrawerPath,
        builder: (context, state) => const CustomDrawer(),
      ),
    ],
  );
}