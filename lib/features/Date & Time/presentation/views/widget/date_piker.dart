import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePiker extends StatefulWidget {
  const DatePiker({Key? key}) : super(key: key);

  @override
  State<DatePiker> createState() => _DatePikerState();
}

class _DatePikerState extends State<DatePiker> {
  DateTime SelectedTime = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      SelectedTime = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      calendarStyle: CalendarStyle(
          weekendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20
          ),
          defaultTextStyle: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20,
          ),
          isTodayHighlighted: false,
          selectedDecoration: BoxDecoration(
            color: Colors.deepOrange,
            shape: BoxShape.circle,
          )),
      availableGestures: AvailableGestures.all,
      focusedDay: SelectedTime,
      firstDay: DateTime.utc(2000, 1, 1),
      lastDay: DateTime(2030, 1, 1),
      selectedDayPredicate: (day) => isSameDay(SelectedTime, day),
      onDaySelected: _onDaySelected,
    );
  }
}
