import 'package:final_project/core/utils/approuter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/assets/fonts.dart';

class SkipBotton extends StatelessWidget {
  const SkipBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(0, 40.h, 30.w, 0),
      child: Align(alignment: Alignment.topRight,
        child: TextButton(
          onPressed: () {
            GoRouter.of(context).push(
              Approuter.LoginPath,
            );
          },
          child: Text(
            'Skip',
            style: Fonts.skipFont,
          ),
        ),
      ),
    );
  }
}
