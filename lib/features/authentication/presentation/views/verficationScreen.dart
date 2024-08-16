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
                      image: AssetImage("lib/core/assets/LOGO FINAL 1.png")),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 440,
                height: 342,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFFFBD57D).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Verification Code",
                      style: TextStyle(color: Color(0xFF101623), fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20,),
                    Text(
                        "Enter code that we have sent to your number ",
                        style: TextStyle(color: Color(0xFF787878), fontSize: 14)),
                    Text(
                        "012345678*** ",
                        style: TextStyle(color: Color(0xFF101623), fontSize: 15)),
                    SizedBox(height: 50,),
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
                                        'lib/core/assets/Celebration-amico 1.png'),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
