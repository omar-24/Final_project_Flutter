import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Fonts
{
  static const onboardingTitleFont = TextStyle(
    fontFamily: 'Comfortaa',
    fontWeight: FontWeight.w600,
    fontSize: 20,
    height: 22.3 / 20,
    letterSpacing: -0.3,
    color: Colors.white,
  );
  static const onboardingDescriptionFont = TextStyle(
    fontFamily: 'Comfortaa',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 17.84 / 16,
    letterSpacing: -0.3,
    color: Color(0xFFFFC100),
  );
  static const skipFont = TextStyle(
      fontFamily: 'Comfortaa',
      fontWeight: FontWeight.w400,
      fontSize: 17,
      height: 18.96 / 16,
      letterSpacing: -0.3,
      color: Colors.white,
  );
}
