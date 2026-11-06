import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../styling/app_colors.dart';
import '../../styling/app_style.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/primary_button_widget.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),
            Container(
              height: 41.h,
              width: 41.w,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: Colors.white, width: 1.0),
              ),
              child: Center(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            Text("Forgot Password?", style: AppStyle.primaryHeadLinesStyle),
            SizedBox(height: 32.h),
            Text(
              "Don't worry! It occurs. Please enter the email address linked with your account.",
              style: AppStyle.normalTextStyle,
            ),
            SizedBox(height: 30.h),
            CustomEditText(
              hintText: "Enter Your Email",
              width: 301.w,
              height: 56.h,
            ),
            SizedBox(height: 30.h),
            PrimaryButtonWidget(buttonText: "Send Code", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
