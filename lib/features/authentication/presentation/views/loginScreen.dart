import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/GreenBotton.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/TextFormField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

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
                  height: 380,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFFFBD57D).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Email",style:Fonts.LabelFont,),
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
                      Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                              onPressed: () {
                                GoRouter.of(context).push(
                                  Approuter.ForgetPath,
                                );
                              },
                              child: Text(
                                "Forget Passord?",
                                style: TextStyle(color: Color(0xFF969696),fontFamily: 'Comfortaa'),
                              ))),
                      SizedBox(
                        height: 5,
                      ),
                      Greenbotton(
                          text: "LOGIN",
                          ONTAP: () => context.go(Approuter.HomePath)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.black,fontFamily: 'Comfortaa'),
                          ),
                          InkWell(
                              onTap: () {
                                GoRouter.of(context).push(
                                  Approuter.SignupPath,
                                );
                              },
                              child: Text(
                                " Sign up",
                                style: TextStyle(color: Colors.redAccent,fontFamily: 'Comfortaa'),
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
