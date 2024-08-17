import 'package:final_project/core/assets/onboarding_assets.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/circle_botton.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/dots.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/onboarding_body.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/skip_botton.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff146356),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              OnboardingBody(image: OnboardingAssets.onboardingImage1, title: OnboardingAssets.onboardingTitle1, description: OnboardingAssets.onboarding1Description),
              OnboardingBody(image: OnboardingAssets.onboardingImage2, title: OnboardingAssets.onboardingTitle2, description: OnboardingAssets.onboarding2Description),
              OnboardingBody(image: OnboardingAssets.onboardingImage3, title: OnboardingAssets.onboardingTitle3, description: OnboardingAssets.onboarding3Description),
            ],
          ),

          SkipBotton(),

          dots(pageController: _pageController),

          CircleBotton(currentPage: _currentPage, pageController: _pageController)
        ],
      ),
    );
  }
}




