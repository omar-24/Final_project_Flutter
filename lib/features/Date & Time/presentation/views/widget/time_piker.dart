import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/AMorPM.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class TimePiker extends StatefulWidget {
  const TimePiker({Key? key}) : super(key: key);

  @override
  State<TimePiker> createState() => _TimePikerState();
}

class _TimePikerState extends State<TimePiker> {
  var hour = 10;
  var min = 30;
  var time = "AM";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumberPicker(
          minValue: 1,
          maxValue: 12,
          value: hour,
          infiniteLoop: true,
          zeroPad: true,
          itemHeight: 30,
          onChanged: (value) {
            setState(() {
              hour = value;
            });
          },
          selectedTextStyle: TextStyle(color: Colors.black, fontSize: 21),
        ),
        Text(
          ":",
          style: TextStyle(fontSize: 20),
        ),
        NumberPicker(
          minValue: 0,
          maxValue: 60,
          value: min,
          infiniteLoop: true,
          zeroPad: true,
          itemHeight: 30,
          onChanged: (value) {
            setState(() {
              min = value;
            });
          },
          selectedTextStyle: TextStyle(color: Colors.black, fontSize: 21),
        ),
        Container(
          width: 80,
          height: 100,
          child: ListWheelScrollView.useDelegate(
              itemExtent: 30,
              diameterRatio: 5,
              perspective: 0.0005,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 2,
                  builder: (context, index) {
                    if (index == 0) {
                      return Amorpm(isitAm: true);
                    } else {
                      return Amorpm(isitAm: false);
                    }
                  })),
        )
      ],
    );
  }
}
