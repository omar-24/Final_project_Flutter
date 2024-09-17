import 'package:final_project/features/home/presentation/views/widget/Home_carousel_slider.dart';
import 'package:final_project/features/home/presentation/views/widget/custom_drawer.dart';
import 'package:final_project/features/home/presentation/views/widget/home_background.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: HomeBackground(),)
        ],
      ),
    );
  }
}
