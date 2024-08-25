import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/features/home/presentation/views/widget/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Carousel(),
        Positioned(
          top: 20,
          left: 20,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  "Location",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
