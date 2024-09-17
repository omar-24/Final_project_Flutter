import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/material.dart';

class NumServiceBox extends StatefulWidget {
  const NumServiceBox({Key? key}) : super(key: key);

  @override
  State<NumServiceBox> createState() => _NumServiceBoxState();
}

class _NumServiceBoxState extends State<NumServiceBox> {
  int personCount = 0;

  void incrementPerson() {
    setState(() {
      if (personCount < 6) personCount++;
    });
  }

  void decrementPerson() {
    setState(() {
      if (personCount > 0) personCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:
            personCount < 1 ? Colors.white : Colors.deepOrange.withOpacity(.3),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  HomeAssets.background,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'From 1 to 6 person',
                    style: Fonts.H6FontsNormal,
                  ),
                  SizedBox(height: 5),
                  Text(
                    '300 LE',
                    style: Fonts.H5FontsNormal,
                  ),
                ],
              ),
            ],
          ),

          Row(
            children: [
              // Decrement button
              Visibility(
                visible: personCount < 1 ? false : true,
                child: FloatingActionButton.small(
                  onPressed: decrementPerson,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.grey[300], // Grey background
                  child:
                      Text("-",style: TextStyle(fontSize: 30, color: Colors.red),), // Red plus icon
                ),
              ),

              SizedBox(
                width: 10,
              ),
              Visibility(
                visible: personCount < 1 ? false : true,
                child: Text(
                  '$personCount',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              SizedBox(
                width: 10,
              ),
              FloatingActionButton.small(
                onPressed: incrementPerson,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.grey[300], // Grey background
                child: Text("+",style: TextStyle(fontSize: 24, color: Colors.red),), // Red plus icon
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
