import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'advertisement_container.dart';

class AdvertisementContainerList extends StatelessWidget {
  const AdvertisementContainerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 243.w,
      height: 108.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index)
        {
          return const AdvertisementContainer();
        }, itemCount: 3,
      ),
    );
  }
}