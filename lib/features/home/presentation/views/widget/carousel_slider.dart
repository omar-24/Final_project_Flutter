import 'package:final_project/core/assets/auth_assets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Carousel extends StatelessWidget {
  final List<ImageProvider> _ImAgeList = [
    AssetImage(HomeAssets.background),
    AssetImage(HomeAssets.background),
    AssetImage(HomeAssets.background),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300.h,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        initialPage: 0,
        viewportFraction: 1,
      ),
      items: _ImAgeList.map((container) {
        return Builder(
          builder: (BuildContext context) {
            return  Container(
            width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: container,
    fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.33), BlendMode.dstATop)
    ),
    ),
    );
          },
        );
      }).toList(),
    );
  }
}
