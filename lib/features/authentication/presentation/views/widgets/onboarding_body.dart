import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  
  const OnboardingBody({super.key, required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 150, 20, 20),
      child: Column(
        children:[
          Image(
            width: 350,
              height: 350,
              image: AssetImage(image)),
          SizedBox(height: 30,),
          Text(title, style: Fonts.onboardingTitleFont, textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          Text(description, style: Fonts.onboardingDescriptionFont, textAlign: TextAlign.center,)
        ]
      ),
    );
  }
}
