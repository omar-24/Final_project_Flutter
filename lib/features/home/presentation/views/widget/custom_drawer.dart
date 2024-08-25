import 'package:final_project/core/assets/auth_assets.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Colors.white,
      child: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AuthAssets.logo))),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "homeScreen");
              },
              child: ListTile(
                leading: Icon(Icons.person_2_outlined,color: Colors.red,),
                title: Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "CartScreen");
              },
              child: ListTile(
                leading: Icon(Icons.language,color: Colors.red),
                title: Text(
                  "Languge",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.shopping_cart_outlined,color: Colors.red),
                title: Text(
                  "Orders",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.notifications_active_outlined,color: Colors.red),
                title: Text(
                  "Notifications",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "login");
              },
              child: ListTile(
                leading: Icon(Icons.star,color: Colors.red),
                title: Text(
                  "Rating",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "login");
              },
              child: ListTile(
                leading: Icon(Icons.perm_contact_cal_sharp,color: Colors.red),
                title: Text(
                  "Contact us",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
