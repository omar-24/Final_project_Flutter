import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class dots extends StatelessWidget {
  const dots({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 250,
        left: 190,
        child: SmoothPageIndicator(controller: _pageController, count: 3,
          effect: ScrollingDotsEffect(
            dotColor: const Color(0xffF04C29).withOpacity(0.5),
            activeDotColor: const Color(0xffF04C29),
          ),
        ));
  }
}