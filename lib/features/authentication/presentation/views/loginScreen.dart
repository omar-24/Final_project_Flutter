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
            Container(
              width: 440,
              height: 342,
              padding: EdgeInsets.all(15),
              decoration:
                  BoxDecoration(color: Color(0xFFFBD57D).withOpacity(0.5),borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email"),
                  Textformfield(
                      icon: Icon(
                        Icons.email_outlined,
                        color: Color(0xFF969696),
                        size: 20,
                      ),
                      hint: "Enter your Email"),
                  Text("Password"),
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
                  Greenbottom(text: "Login")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
