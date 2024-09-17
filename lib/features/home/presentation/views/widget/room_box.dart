import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/utils/approuter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoomBox extends StatelessWidget {
  final String title;
  final String image;
  final String id;

  const RoomBox({
    super.key,
    required this.title,
    required this.image,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(
            Approuter.RoomDetailsPath,
          );},
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.only(left: 20, top: 15),
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Comfortaa'),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 20,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "4.7",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child: Icon(
                    Icons.star,
                    color: Colors.redAccent,
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
