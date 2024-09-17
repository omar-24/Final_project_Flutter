import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/fonts.dart';
import 'package:flutter/material.dart';

class CheckServiceBox extends StatefulWidget {
  const CheckServiceBox({Key? key, required this.price, required this.title, required this.image}) : super(key: key);
  final int price;
  final String title;
  final String image;
  @override
  State<CheckServiceBox> createState() => _CheckServiceBoxState();
}

class _CheckServiceBoxState extends State<CheckServiceBox> {
  bool IsSelected = false;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 90,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: IsSelected ? Colors.deepOrange.withOpacity(.4) : Colors.white,
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
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              PhotoSessionAssets.photo1,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),

          // Text information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "title",
                style: Fonts.H6FontsNormal,
              ),
              SizedBox(height: 5),
              Text(
                "price",
                style: Fonts.H4FontsNormal,
              ),
            ],
          ),
          Row(
            children: [
              Visibility(
                visible: IsSelected ? false : true,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      IsSelected = !IsSelected;
                    });
                  },
                  icon: Icon(
                    Icons.add_circle_outlined,
                    size: 35,
                  ),
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

