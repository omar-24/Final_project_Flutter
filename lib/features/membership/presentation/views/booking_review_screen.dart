
import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/customBotton.dart';
import 'package:final_project/features/membership/presentation/views/widgets/1bookingReview_box.dart';
import 'package:final_project/features/membership/presentation/views/widgets/2addCard_box.dart';
import 'package:final_project/features/membership/presentation/views/widgets/3discount_box.dart';
import 'package:flutter/material.dart';

class MemberShipBookingreviewScreen extends StatelessWidget {
  const MemberShipBookingreviewScreen({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
            children: [
              BookingReviewbox(),
              SizedBox(height: 20),
              AddCardBox(),
              SizedBox(height: 20),
              DiscountBox(),
              SizedBox(height: 20),
              Custombotton(text: "Book", ONTAP: () {},backcolor:  Color(0xFF20473E),textcolor: Colors.white,),
              SizedBox(height: 15),
              Custombotton(text: "Cancellation Policy", ONTAP: () {},backcolor: Colors.white,textcolor: Color(0xFF20473E),),
            ],
          ),
        ),
      ),
    );
  }
}
