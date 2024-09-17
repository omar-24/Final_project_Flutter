import 'package:final_project/core/assets/auth_assets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeCarousel extends StatefulWidget {
  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  final List<ImageProvider> _ImAgeList = [
    AssetImage(HomeAssets.background),
    AssetImage(HomeAssets.background),
    AssetImage(HomeAssets.background),
    AssetImage(HomeAssets.background),
    AssetImage(HomeAssets.background),
    AssetImage(HomeAssets.background),
  ];

  int CurrImg = 0;

  Widget indicator(int idx) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: CurrImg == idx
            ? Colors.deepOrange
            : Colors.deepOrange.withOpacity(.6),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              CurrImg = index;
            });
          },
          height: MediaQuery.of(context).size.height * 0.4,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 700),
          autoPlayCurve: Curves.easeIn,
          enableInfiniteScroll: true,
          initialPage: 0,
          viewportFraction: 1,
        ),
        items: _ImAgeList.map((container) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: container,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
        Padding(
          padding: const EdgeInsets.only(top:260,left: 50 ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(_ImAgeList.length, (Index) {
              return indicator(Index);
            }),
          ),
        )
    ]
    );
  }
}
