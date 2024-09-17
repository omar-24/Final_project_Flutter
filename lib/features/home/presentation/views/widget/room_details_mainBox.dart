import 'package:final_project/core/assets/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

import 'bottomSheet_listTile.dart';
import 'custom_listTile.dart';

class RoomDetailsMainbox extends StatelessWidget {
  const RoomDetailsMainbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 570,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30)),
          boxShadow: [BoxShadow()]),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Traning Rooms",
                style: TextStyle(
                    fontFamily: "Comfortaa",
                    color: Colors.deepOrange,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 90,
                  height: 30,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.3),
                            blurRadius: 4,
                            spreadRadius: 1,
                            offset: Offset(0, 3))
                      ]),
                  child: Row(
                    children: [
                      Icon(
                        Icons.chair,
                        size: 14,
                        color: Colors.deepOrange,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "30 Seats",
                        style: TextStyle(
                            fontFamily: "Comfortaa", fontSize: 12),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(fontSize: 11, fontFamily: "Comfortaa"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Amenities",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Comfortaa",
                    color: Colors.redAccent),
              ),
              Column(
                children: [
                  CustomListtile(
                    title: "Printer, Scanner and photocopier",
                    icon: Icons.print_rounded,
                  ),
                  CustomListtile(title: "Wi-fi", icon: Icons.wifi),
                  CustomListtile(
                      title: "Free coffee", icon: Icons.coffee),
                  CustomListtile(
                      title: "Video Conf",
                      icon: Icons.ondemand_video_outlined),
                  CustomListtile(
                      title: "LED screen",
                      icon: Icons.screenshot_monitor_outlined),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 300,
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "All Amenities",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Comfortaa",
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Column(
                                  children: <Widget>[
                                    BottomsheetListtile(
                                      title:
                                      "Printer, Scanner and photocopier",
                                      icon: Icons.print_rounded,
                                      subtitle: Text("data"),
                                    ),
                                    BottomsheetListtile(
                                      title: "Wi-fi",
                                      icon: Icons.wifi,
                                      subtitle: Text("data"),
                                    ),
                                    BottomsheetListtile(
                                      title: "Free coffee",
                                      icon: Icons.coffee,
                                      subtitle: Text("data"),
                                    ),
                                    BottomsheetListtile(
                                      title: "Video Conf",
                                      icon:
                                      Icons.ondemand_video_outlined,
                                      subtitle: Text("data"),
                                    ),
                                    BottomsheetListtile(
                                      title: "LED screen",
                                      icon: Icons
                                          .screenshot_monitor_outlined,
                                      subtitle: Text("data"),
                                    ),
                                    BottomsheetListtile(
                                      title: "Meeting room access",
                                      icon: Icons.groups,
                                      subtitle: Text("Meeting room"),
                                    ),
                                    ElevatedButton(
                                      child: const Text('Done'),
                                      onPressed: () =>
                                          Navigator.pop(context),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.arrow_downward),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 24,
                    color: Colors.deepOrange,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Location",
                    style: TextStyle(
                        fontFamily: "Comfortaa",
                        fontSize: 18,
                        color: Colors.deepOrange),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset("images/Frame 30044.png"),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
