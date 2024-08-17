import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/GreenBottom.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/TextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verficationscreen extends StatelessWidget {
  const Verficationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                        style: Fonts.H1Fonts,
                      ),
                      SizedBox(height: 20,),
                      Text(
                          "Enter code that we have sent to your number ",
                          style: Fonts.H4Fonts),
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
                      Greenbottom(
                        text: "Verify",
                        ONTAP: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                content: SingleChildScrollView(
                                  // To handle overflow
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // Add your illustration here
                                      Image.asset(
                                          AuthAssets.dialog),
                                      SizedBox(height: 20),
                                      Text(
                                        'Success',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'You have successfully reset your password.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(height: 20),
                                      // Wrap buttons in a Row to show them horizontally
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pop(); // Close the dialog
                                        },
                                        style: ElevatedButton.styleFrom(
                                            fixedSize:Size(223, 50),
                                            backgroundColor: Color(0xFF20473E),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10))),
                                        child: Text('Done',style:TextStyle(color: Colors.white,fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                ),
                              );
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
