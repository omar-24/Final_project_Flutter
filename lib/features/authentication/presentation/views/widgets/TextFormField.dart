import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/material.dart';


class Textformfield extends StatelessWidget {
    final Icon icon;
    final String hint;
  const Textformfield({Key? key, required this.icon, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50,
      child: TextFormField(
        cursorColor: Color(0xFF20473E),
        decoration: InputDecoration(
          hintStyle:Fonts.HintFont,
          hintText: hint,
          filled: true,
          fillColor: Colors.white.withOpacity(.75),
          prefixIcon: icon,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color:Color(0xFF20473E),width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color:Color(0xFF20473E),width: 2),
          ),

        ),
          validator:(val){
          if(val!.length == 0){
            return "Email cannot be empty";
          }
          else {
            return null;
          }
          }
      ),
    );
  }
}
