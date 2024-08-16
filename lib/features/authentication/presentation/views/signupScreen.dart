import 'package:final_project/features/authentication/presentation/views/widgets/GreenBottom.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/TextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 440.w,
                  height: 600.h,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFFFBD57D).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Email"),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Enter your Email"),
                      SizedBox(height:25.h),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("User Name"),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.person_2_outlined,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Enter your Name"),
                      SizedBox(height:25.h),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Password"),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Enter your Password"),
                      SizedBox(height:25.h),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Confirm Password"),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Confirm Password"),
                      SizedBox(height:30.h),
                      Greenbottom(text: "SIGN UP",ONTAP: (){},),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.black),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Text(
                                " Log In",
                                style: TextStyle(color: Colors.redAccent),
                              ))
                        ],
                      )
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
