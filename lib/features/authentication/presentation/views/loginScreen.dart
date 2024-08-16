import 'package:final_project/features/authentication/presentation/views/widgets/GreenBottom.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/TextFormField.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

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
                height: 362,
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
                    SizedBox(height: 25,),
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
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Passord?",
                              style: TextStyle(color: Color(0xFF969696)),
                            ))),
                    SizedBox(height:15 ,),
                    Greenbottom(text: "Login",ONTAP: (){}),
                    SizedBox(height:20 ,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              " Sign up",
                              style: TextStyle(color: Colors.redAccent),
                            ))
                      ],
                    )
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
