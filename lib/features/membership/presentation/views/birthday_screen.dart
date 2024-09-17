import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/features/membership/presentation/views/widgets/hint_box.dart';
import 'package:final_project/features/membership/presentation/views/widgets/num_service_box.dart';
import 'package:flutter/material.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({Key? key}) : super(key: key);

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Birthday',
          style: Fonts.H2FontsNormal,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HintBox(),
              Text(
                "Cakes",
                style: Fonts.H3FontsNormal,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: NumServiceBox(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: NumServiceBox(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: NumServiceBox(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Decoration",
                style: Fonts.H3FontsNormal,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: NumServiceBox(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: NumServiceBox(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
