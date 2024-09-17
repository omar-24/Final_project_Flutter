import 'package:final_project/features/home/presentation/views/widget/Home_carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Pageindicator extends StatelessWidget {
  const Pageindicator({Key? key, required this.controller}) : super(key: key);

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: Align(alignment: Alignment.bottomCenter,
        child: SmoothPageIndicator(controller: controller, count: 4,
          effect: ScrollingDotsEffect(
            dotColor: const Color(0xffF04C29).withOpacity(0.5),
            activeDotColor: const Color(0xffF04C29),
          ),
        ),
      ),
    );;
  }
}
