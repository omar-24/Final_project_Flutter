import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/features/offers/presentation/views/widgets/event_scroll.dart';
import 'package:flutter/material.dart';


class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Events',
          style: Fonts.H2FontsNormal,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.notifications_active_outlined,size: 25,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.list,size: 30,),
            onPressed: () {},
          ),
        ],
      ),
      body: EventScroll(),
    );
  }
}
