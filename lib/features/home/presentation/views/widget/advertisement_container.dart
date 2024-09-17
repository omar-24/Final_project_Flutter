import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/auth_assets.dart';

class AdvertisementContainer extends StatelessWidget {
  const AdvertisementContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 243.w,
      height: 108.h,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(HomeAssets.containerImage),
          )
      ),
    );
  }
}