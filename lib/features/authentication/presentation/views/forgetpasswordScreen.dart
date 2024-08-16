import 'package:final_project/features/authentication/presentation/views/widgets/GreenBottom.dart';
import 'package:final_project/features/authentication/presentation/views/widgets/TextFormField.dart';
import 'package:flutter/material.dart';

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
                    Text("Forgot Your Password?",style: TextStyle(color:Color(0xFF101623),fontSize: 20),),
                    Text("Enter your phone number, we will send you confirmation code",style: TextStyle(color:Color(0xFF787878),fontSize: 12)),
                    SizedBox(height: 80,),
                    Text("Email",style: TextStyle(fontSize: 18),),
                    Textformfield(
                        icon: Icon(
                          Icons.email_outlined,
                          color: Color(0xFF969696),
                          size: 20,
                        ),
                        hint: "Enter your Email"),
                    SizedBox(height: 20,),
                    Greenbottom(text: "Reset Password",ONTAP: (){}),
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
