import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class AppStyle {
  static TextStyle primaryHeadLinesStyle = TextStyle(
    fontFamily: AppFonts.primaryFont,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle secondaryHeadLinesStyle = TextStyle(
    fontFamily: AppFonts.secondaryFont,
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.secoundryPrimaryColor,
  );
  static TextStyle bodyTextStyle = TextStyle(
    fontFamily: AppFonts.bodyFont,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );
}
