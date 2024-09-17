import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/GreenBotton.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/verfication_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verficationscreen extends StatelessWidget {
  const Verficationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {Navigator.pop(context);},
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AuthAssets.logo)),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 440,
                  height: 342,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                  decoration: BoxDecoration(
                      color: Color(0xFFFBD57D).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter Verification Code",
                        style: Fonts.H2FontsNormal,
                      ),
                      SizedBox(height: 20,),
                      Text(
                          "Enter code that we have sent to your number ",
                          style: Fonts.H6FontsGray),
                      Text(
                          "012345678*** ",
                          style: TextStyle(color: Color(0xFF101623), fontSize: 16,height: 2,fontFamily: 'Comfortaa')),
                      SizedBox(height: 25,),
                      OtpTextField(
                        numberOfFields: 6,
                        showFieldAsBox: false,
                        borderColor: Colors.redAccent,
                        enabledBorderColor: Colors.redAccent,
                        focusedBorderColor: Colors.redAccent,
                        cursorColor: Colors.redAccent,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Greenbotton(
                        text: "Verify",
                        ONTAP: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return VerficationDialog();
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
