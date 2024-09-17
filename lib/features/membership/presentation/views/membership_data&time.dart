import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/date_piker.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/seat_number.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/time_piker.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/customBotton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MembershipDataTime extends StatelessWidget {
  const MembershipDataTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Select date and time',
          style: Fonts.H2FontsNormal,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              DatePiker(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "From :",
                    style: Fonts.H4FontsNormal,
                  ),
                  TimePiker(),
                  Text(
                    "To :",
                    style: Fonts.H4FontsNormal,
                  ),
                  TimePiker(),
                ],
              ),
              SeatNumber(),
              SizedBox(
                height: 60,
              ),
              Custombotton(
                  text: "Next",
                  ONTAP: () {
                    GoRouter.of(context).push(
                      Approuter.BookingReviewRooms,
                    );
                  },
                  textcolor: Colors.white,
                  backcolor: Color(0xFF20473E))
            ],
          ),
        ),
      ),
    );
  }
}
