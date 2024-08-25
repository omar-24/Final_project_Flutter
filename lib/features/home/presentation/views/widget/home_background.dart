import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/dots.dart';
import 'package:final_project/features/home/presentation/views/widget/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeBackground extends StatefulWidget {
  const HomeBackground({Key? key}) : super(key: key);

  @override
  State<HomeBackground> createState() => _HomeBackgroundState();
}

class _HomeBackgroundState extends State<HomeBackground> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Carousel(),
        Container(
          color: Colors.black.withOpacity(.4),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
        ),
        Positioned(
          top: 40.h,
          left: 30.w,
          child: InkWell(
              onTap: () => context.go(Approuter.DrawerPath),
              child: Icon(
                Icons.list,
                color: Colors.white,
                size: 35,
              )),
        ),
        Positioned(
          top: 40.h,
          right: 30.w,
          child: Icon(
            Icons.notifications_active_outlined,
            color: Colors.white,
            size: 32,
          ),
        ),
        Positioned(
          bottom: 120.h,
          left: 25.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 17,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Location",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Comfortaa"),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60.h,
          right: 30.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.yellowAccent,size: 16,),
                SizedBox(width: 5),
                Text(
                  "4.7",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 65.h,
            left: 25.w,
            child: Text(
              "Delightful open air",
              style: TextStyle(
                  fontFamily: "Comfortaa", fontSize: 21, color: Colors.white),
            )),
      ],
    );
  }
}
