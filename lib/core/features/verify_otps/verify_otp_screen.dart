import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../styling/app_colors.dart';
import '../../styling/app_style.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(22.0),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
              Text("OTP Verification", style: AppStyle.primaryHeadLinesStyle),
              SizedBox(height: 10.h),
              Text(
                "Enter the verification code we just sent on your email address.",
                style: AppStyle.normalTextStyle,
              ),
              SizedBox(height: 32.h),
              Center(
                child: MaterialPinFormField(
                  length: 6,
                  autoFocus: true,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  theme: MaterialPinTheme(
                    shape: MaterialPinShape.outlined,
                    cellSize: Size(45.w, 56.h),
                    spacing: 8.w,
                    borderRadius: BorderRadius.circular(8.r),
                    borderColor: AppColors.grayColor,
                    focusedBorderColor: AppColors.primaryColor,
                    filledBorderColor: AppColors.primaryColor,
                    cursorColor: AppColors.primaryColor,
                    textStyle: AppStyle.bodyTextStyle,
                  ),
                  onCompleted: (code) {
                    // TODO: send the code to the verify API.
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
