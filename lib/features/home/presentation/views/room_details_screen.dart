import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/home/presentation/views/widget/custom_listTile.dart';
import 'package:final_project/features/home/presentation/views/widget/room_details_carousel.dart';
import 'package:final_project/features/home/presentation/views/widget/room_details_mainBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'widget/bottomSheet_listTile.dart';

class RoomDetailsScreen extends StatelessWidget {
  const RoomDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RoomCarousel(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: () {Navigator.pop(context);}, child: Icon(Icons.arrow_back_ios_new)),
                Text(
                  "Traning Rooms",
                  style: TextStyle(
                    fontFamily: "Comfortaa",
                    fontSize: 17,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Positioned(
            top: 250,
            left: 20,
            child: Container(
              width: 90,
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
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
                    SizedBox(width: 5),
                    Text(
                      "Roxy",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Comfortaa"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RoomDetailsMainbox(),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 85,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          blurRadius: 4,
                          spreadRadius: 1,
                          offset: Offset(0, -3))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Comfortaa",
                                color: Colors.deepOrange),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("EGP/day",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "Comfortaa",
                                  color: Colors.deepOrange)),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_drop_down_sharp),
                    ElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).push(
                          Approuter.SelectDate_TimePath,
                        );
                      },
                      child: Text(
                        "Select Date",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Comfortaa",
                            fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(140, 40),
                          elevation: 6,
                          shadowColor: Colors.black,
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
