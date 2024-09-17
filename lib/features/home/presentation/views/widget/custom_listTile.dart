import 'package:flutter/material.dart';
class CustomListtile extends StatelessWidget {
  const CustomListtile({Key? key, required this.title, required this.icon}) : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: 22,),
      title: Text(title,style: TextStyle(fontSize: 13,fontFamily: "Comfortaa"),),
    );
  }
}
