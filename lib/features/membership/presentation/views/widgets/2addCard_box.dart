import 'package:flutter/material.dart';


class AddCardBox extends StatelessWidget {
  const AddCardBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 130,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Payment Method",
                style:
                TextStyle(fontSize: 16, fontFamily: "Comfortaa")),
            Text(
                "You will not be debited until your booking is confirmed",
                style: TextStyle(fontFamily: "Comfortaa",fontSize: 12)),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.red,
                  size: 20,
                ),
                Text(
                  "Add card",
                  style: TextStyle(fontFamily: "Comfortaa"),
                )
              ],
            )
          ],
        ));
  }
}
