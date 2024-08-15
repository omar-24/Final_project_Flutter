import 'package:flutter/material.dart';

class Greenbottom extends StatelessWidget {
  final String text;

  const Greenbottom({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              fixedSize:Size(423, 50),
              backgroundColor: Color(0xFF20473E),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(text, style: TextStyle(color: Colors.white),)),
    );
  }
}
