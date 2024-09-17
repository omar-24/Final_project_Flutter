import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/Date_screen.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/bookingReview_screen.dart';
import 'package:final_project/features/home/presentation/views/room_details_screen.dart';
import 'package:final_project/features/home/presentation/views/rooms_screen.dart';
import 'package:final_project/features/membership/presentation/views/birthday_screen.dart';
import 'package:final_project/features/membership/presentation/views/booking_review_screen.dart';
import 'package:final_project/features/membership/presentation/views/memberShip_screen.dart';
import 'package:final_project/features/membership/presentation/views/membership_data&time.dart';
import 'package:final_project/features/offers/presentation/views/event_details_screen.dart';
import 'package:final_project/features/offers/presentation/views/event_screen.dart';
import 'package:final_project/features/offers/presentation/views/offer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/home/presentation/views/widget/room_details_carousel.dart';
import 'features/membership/presentation/views/photoSession_screen.dart';

void main() {
  runApp(const finalApp());
}

class finalApp extends StatelessWidget {
  const finalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ScreenUtilInit(
    //   designSize: const Size(390, 844),
    //   minTextAdapt: true,
    //   splitScreenMode: true,
    //   builder: (_,child){
    //     return MaterialApp.router(
    //       routerConfig: Approuter.router,
    //       debugShowCheckedModeBanner: false,
    //     );
    //   },
    // );
    return MaterialApp(
      home: PhotosessionScreen(),
    );
  }
}
