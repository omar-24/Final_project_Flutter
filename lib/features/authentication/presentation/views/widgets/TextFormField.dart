import 'package:flutter/material.dart';


class Textformfield extends StatelessWidget {
    final Icon icon;
    final String hint;
  const Textformfield({Key? key, required this.icon, required this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(0xFF20473E),
      decoration: InputDecoration(
        hintStyle:TextStyle(color: Color(0xFF969696),fontSize:15),
        hintText: hint,
        filled: true,
        fillColor: Colors.white.withOpacity(.75),
        prefixIcon: icon,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color:Color(0xFF20473E),width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
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
    );
  }
}
