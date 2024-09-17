import 'package:flutter/material.dart';


class OffersDialog extends StatelessWidget {
  const OffersDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.local_offer_outlined),
                Text(
                  "30% off  10 booking (up to EGP 150)",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            SizedBox(height: 20),
            Image.asset("images/code.png"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text('Copy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "Comfortaa")),
            ),
          ],
        ),
      ),
    );
  }
}
