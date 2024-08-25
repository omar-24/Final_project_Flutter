import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/GreenBottom.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/TextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

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
                  width: 440.w,
                  height: 540.h,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFFFBD57D).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Email",style: Fonts.LabelFont,),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Enter your Email"),
                      SizedBox(height:20.h),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("User Name",style: Fonts.LabelFont,),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.person_2_outlined,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Enter your Name"),
                      SizedBox(height:20.h),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Password",style: Fonts.LabelFont,),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Enter your Password"),
                      SizedBox(height:20.h),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Confirm Password",style: Fonts.LabelFont,),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Confirm Password"),
                      SizedBox(height:30.h),
                      Greenbottom(text: "SIGN UP",ONTAP: () => context.go(Approuter.HomePath),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.black,fontFamily: 'Comfortaa'),
                          ),
                          InkWell(
                              onTap: () {GoRouter.of(context).push(
                                Approuter.LoginPath,
                              );},
                              child: Text(
                                " Log In",
                                style: TextStyle(color: Colors.redAccent,fontFamily:'Comfortaa'),
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
