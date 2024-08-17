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

  static const LabelFont = TextStyle(
    fontFamily: 'Comfortaa',
    fontWeight: FontWeight.w500,
    fontSize: 19,
    color: Color(0xFF2F2F2F),
  );

  static const HintFont = TextStyle(
    fontFamily: 'Comfortaa',
    fontSize: 14,
    color: Color(0xFF787878),
  );
  static const H1Fonts = TextStyle(
    fontFamily: 'Comfortaa',
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Color(0xFF101623),
  );
  static const H4Fonts = TextStyle(
    fontFamily: 'Comfortaa',
    fontSize: 14,
    color: Color(0xFF787878),
  );
}
