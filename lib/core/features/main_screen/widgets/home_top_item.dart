import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_assets.dart';
import '../../../styling/app_colors.dart';
import '../../../styling/app_style.dart';

class HomeTopItem extends StatelessWidget {
  const HomeTopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            AppAssets.introLogo,
            width: 48,
            height: 48,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome back", style: AppStyle.normalTextStyle),
              SizedBox(height: 2.h),

              Text("Hager Samy", style: AppStyle.boldTextSecondaryStyle),
            ],
          ),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.grayColor, width: 1.0),
          ),
          child: Icon(
            Icons.notification_important,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
