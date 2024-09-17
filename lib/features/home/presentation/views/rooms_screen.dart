import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/features/home/presentation/views/widget/room_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rooms",style: TextStyle(fontFamily: "Comfortaa"),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return RoomBox(
              title: "Traning rooms", image: HomeAssets.background, id: "2");
        },
        itemCount: 5,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
