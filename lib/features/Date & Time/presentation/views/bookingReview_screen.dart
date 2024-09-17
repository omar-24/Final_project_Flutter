import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/booking%20review_box1.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/booking%20review_box2.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/booking%20review_box3.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/booking%20review_box4.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/customBotton.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/GreenBotton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookingreviewScreen extends StatelessWidget {
  const BookingreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Booking Review',
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
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              BookingReviewbox1(),
              SizedBox(height: 20),
              BookingReviewbox2(),
              SizedBox(height: 20),
              BookingReviewbox3(),
              SizedBox(height: 20),
              BookingReviewbox4(),
              SizedBox(height: 20),
              Custombotton(
                text: "Book",
                ONTAP: () {
                  GoRouter.of(context).push(
                    Approuter.OffersScroll,
                  );
                },
                backcolor: Color(0xFF20473E),
                textcolor: Colors.white,
              ),
              SizedBox(height: 15),
              Custombotton(
                text: "Cancellation Policy",
                ONTAP: () {},
                backcolor: Colors.white,
                textcolor: Color(0xFF20473E),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
