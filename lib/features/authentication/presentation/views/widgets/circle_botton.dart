import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../loginScreen.dart';

class CircleBotton extends StatelessWidget {
  const CircleBotton({
    super.key,
    required int currentPage,
    required PageController pageController,
  }) : _currentPage = currentPage, _pageController = pageController;

  final int _currentPage;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 150,
      left: 190,
      child: ElevatedButton(onPressed: () {
        if (_currentPage < 2) {
          _pageController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Loginscreen()),
          );
        }
      },
        style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Color(0xff20473E),minimumSize: Size(70, 70), ),
        child: Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
      ),
    );
  }
}