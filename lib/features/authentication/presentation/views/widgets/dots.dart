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
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: Align(alignment: Alignment.bottomCenter,
        child: SmoothPageIndicator(controller: _pageController, count: 3,
          effect: ScrollingDotsEffect(
            dotColor: const Color(0xffF04C29).withOpacity(0.5),
            activeDotColor: const Color(0xffF04C29),
          ),
        ),
      ),
    );
  }
}