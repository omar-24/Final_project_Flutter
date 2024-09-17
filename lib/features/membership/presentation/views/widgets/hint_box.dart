import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/material.dart';

class HintBox extends StatelessWidget {
  const HintBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 70,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            const Icon(
              Icons.circle,
              size: 15,
              color: Colors.deepOrange,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "You can buy them from any where else without \nany cost or services",
              style: Fonts.H6FontsGray,
            ),
          ],
        ),
      ),
    );
  }
}
