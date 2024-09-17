import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/customBotton.dart';
import 'package:final_project/features/membership/presentation/views/widgets/memberShipOption.dart';
import 'package:flutter/material.dart';

class MembershipScreen extends StatefulWidget {
  @override
  _MembershipScreenState createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  String selectedOption = 'A month'; // Default selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Membership',
          style: TextStyle(
            fontFamily: 'Comfortaa',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // First Membership Option
            MembershipOption(
              title: 'A month',
              description: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.deepOrange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1250 LE for one person",
                        style: Fonts.H6FontsNormal,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.deepOrange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "included daily drink and movie night for you \nand your friends",
                        style: Fonts.H6FontsNormal,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.deepOrange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4 invitations for your friends spend a day in\nShogaf included drink",
                        style: Fonts.H6FontsNormal,
                      ),
                    ],
                  ),
                ],
              ),
              isSelected: selectedOption == 'A month',
              onTap: () {
                setState(() {
                  selectedOption = 'A month';
                });
              },
            ),
            SizedBox(height: 40),
            // Second Membership Option
            MembershipOption(
              title: '15 Separate days',
              description: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.deepOrange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "750 LE for one person",
                        style: Fonts.H6FontsNormal,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.deepOrange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "One invitation for your friends spend a day in\nShogaf included drink",
                        style: Fonts.H6FontsNormal,
                      ),
                    ],
                  ),
                ],
              ),
              isSelected: selectedOption == '15 Separate days',
              onTap: () {
                setState(() {
                  selectedOption = '15 Separate days';
                });
              },
            ),
            Spacer(),
            // Next Button
            Custombotton(text: "Next", ONTAP: (){}, textcolor: Colors.white, backcolor: Color(0xFF20473E))
          ],
        ),
      ),
    );
  }
}
