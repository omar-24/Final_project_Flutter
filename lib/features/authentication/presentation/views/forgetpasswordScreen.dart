import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/GreenBottom.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/TextFormField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Forgetpasswordscreen extends StatelessWidget {
  const Forgetpasswordscreen({Key? key}) : super(key: key);

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
                  image: DecorationImage(image: AssetImage(AuthAssets.logo)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: 440,
                  height: 370,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                  decoration: BoxDecoration(
                      color: Color(0xFFFBD57D).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Forgot Your Password?",
                        style: Fonts.H1Fonts,
                      ),
                      SizedBox(height:15),
                      Text(
                          "Enter your Email Address, we will send you confirmation code",
                          style: Fonts.H4Fonts),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Email",
                          style: Fonts.LabelFont,
                        ),
                      ),
                      Textformfield(
                          icon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFF969696),
                            size: 20,
                          ),
                          hint: "Enter your Email"),
                      SizedBox(
                        height: 25,
                      ),
                      Greenbottom(
                          text: "Reset Password",
                          ONTAP: () {
                            GoRouter.of(context).push(
                              Approuter.VervicationPath,
                            );
                          }),
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
