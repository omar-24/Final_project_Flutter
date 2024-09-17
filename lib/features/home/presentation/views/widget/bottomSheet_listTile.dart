import 'package:flutter/material.dart';
class BottomsheetListtile extends StatelessWidget {
  const BottomsheetListtile({Key? key, required this.title, required this.icon, required this.subtitle}) : super(key: key);

  final String title;
  final IconData icon;
  final Widget subtitle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: ListTile(
        leading: Icon(icon,size: 22,color:Color(0xFF585858) ,),
        title: Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,fontFamily: "Comfortaa",color: Color(0xFF585858)),),
        subtitle: subtitle,
      ),
    );
  }
}
