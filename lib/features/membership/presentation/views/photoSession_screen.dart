import 'package:final_project/core/assets/auth_assets.dart';
import 'package:final_project/core/assets/fonts.dart';
import 'package:final_project/features/Date%20&%20Time/presentation/views/widget/customBotton.dart';
import 'package:final_project/features/membership/presentation/views/widgets/num_service_box.dart';
import 'package:flutter/material.dart';

import 'widgets/check_service_box.dart';

class PhotosessionScreen extends StatefulWidget {
  const PhotosessionScreen({Key? key}) : super(key: key);

  @override
  State<PhotosessionScreen> createState() => _PhotosessionScreenState();
}

class _PhotosessionScreenState extends State<PhotosessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Photo Session',
          style: Fonts.H2FontsNormal,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: CheckServiceBox(image: PhotoSessionAssets.photo1,title: "Filming with a video camera outside the rooms",price: 500 ,),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: CheckServiceBox(image: PhotoSessionAssets.photo1,title: "Filming with a video camera outside the rooms",price: 250,),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: CheckServiceBox(image: PhotoSessionAssets.photo1,title: "Filming with a video camera outside the rooms",price: 400,),
                  ),
                ],
              ),
              SizedBox(height: 380,),
              Custombotton(text: "500", ONTAP: (){}, textcolor: Colors.white, backcolor:Color(0xFF20473E))
            ],
          ),
        ),
      ),
    );
  }
}
