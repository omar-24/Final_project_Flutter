import 'package:final_project/core/assets/auth_assets.dart';
import 'package:flutter/material.dart';


class VerficationDialog extends StatelessWidget {
  const VerficationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: SingleChildScrollView(
        // To handle overflow
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Add your illustration here
            Image.asset(
                AuthAssets.dialog),
            SizedBox(height: 20),
            Text(
              'Success',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'You have successfully reset your password.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Wrap buttons in a Row to show them horizontally
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(); // Close the dialog
              },
              style: ElevatedButton.styleFrom(
                  fixedSize:Size(223, 50),
                  backgroundColor: Color(0xFF20473E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text('Done',style:TextStyle(color: Colors.white,fontSize: 17)),
            ),
          ],
        ),
      ),
    );
  }
}
