import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../routing/app_routes.dart';
import '../../styling/app_colors.dart';
import '../../styling/app_style.dart';
import '../../widgets/primary_button_widget.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(22.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle,
                  size: 100.r,
                  color: AppColors.primaryColor,
                ),
                SizedBox(height: 32.h),
                Text(
                  "Password Changed!",
                  textAlign: TextAlign.center,
                  style: AppStyle.primaryHeadLinesStyle,
                ),
                SizedBox(height: 10.h),
                Text(
                  "Your password has been changed successfully.",
                  textAlign: TextAlign.center,
                  style: AppStyle.normalTextStyle,
                ),
                SizedBox(height: 38.h),
                PrimaryButtonWidget(
                  buttonText: "Back to Login",
                  onPressed: () {
                    GoRouter.of(context).goNamed(AppRoutes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
