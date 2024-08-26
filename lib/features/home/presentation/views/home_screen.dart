import 'package:final_project/features/home/presentation/views/widget/advertisement_container_list.dart';
import 'package:final_project/features/home/presentation/views/widget/advertisement_widget.dart';
import 'package:final_project/features/home/presentation/views/widget/all_buttons.dart';
import 'package:final_project/features/home/presentation/views/widget/home_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shape_to_go/shape_to_go.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(Icons.notifications_active_outlined,),
          )
        ],
      ),
      drawer: CustomDrawer(),*/
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: HomeBackground(),),
          SliverToBoxAdapter(child: AdvertisementWidget(label: 'Advertisement',)),
          SliverToBoxAdapter(child: AdvertisementContainerList(),),
          SliverToBoxAdapter(child: AllButtons(),),
          SliverToBoxAdapter(child: AdvertisementWidget(label: 'Categories',),),
          SliverToBoxAdapter(child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // الشكل العلوي
                ClipPath(
                  clipper: TopHexagonClipper(),
                  child: Container(
                    color: Colors.grey[400],
                    width: 342.w,
                    height: 200.h,
                    child: Center(
                      child: Text(
                        'Rooms',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // الشكل السفلي الأيسر
                    ClipPath(
                      clipper: BottomLeftHexagonClipper(),
                      child: Container(
                        color: Colors.orange[300],
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text(
                            'Orders',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // الشكل السفلي الأيمن
                    ClipPath(
                      clipper: BottomRightHexagonClipper(),
                      child: Container(
                        color: Colors.yellow[300],
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Text(
                            'Events',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    )
    ],
    )
    );
    }
  }

// الشكل العلوي
class TopHexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.width);
    path.lineTo(size.height, size.width * 0.5);
    path.lineTo(size.height, size.width);
    path.lineTo(size.height, 0);
    path.lineTo(size.height * 0.4, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// الشكل السفلي الأيسر
class BottomLeftHexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.6);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(0, size.height * 0.6);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// الشكل السفلي الأيمن
class BottomRightHexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height * 0.6);
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width, size.height * 0.6);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}