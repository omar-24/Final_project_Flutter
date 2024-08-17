import 'package:final_project/core/utils/approuter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: Align(alignment: Alignment.bottomCenter,
        child: ElevatedButton(onPressed: () {
          if (_currentPage < 2) {
            _pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(builder: (context) => Loginscreen()),
            // );
            GoRouter.of(context).push(
              Approuter.LoginPath,
            );
          }
        },
          style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Color(0xff20473E),minimumSize: Size(70, 70), ),
          child: Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
        ),
      ),
    );
  }
}