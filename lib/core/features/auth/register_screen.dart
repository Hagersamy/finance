import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../app_assets.dart';
import '../../routing/app_routes.dart';
import '../../styling/app_colors.dart';
import '../../styling/app_style.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/social_login_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
            Text(
              "Hello! Register to get started",
              style: AppStyle.primaryHeadLinesStyle,
            ),
            SizedBox(height: 32.h),
            CustomEditText(hintText: "Username", width: 301.w, height: 56.h),
            SizedBox(height: 12.h),
            CustomEditText(hintText: "Email", width: 301.w, height: 56.h),
            SizedBox(height: 12.h),
            CustomEditText(hintText: "Password", width: 301.w, height: 56.h),
            SizedBox(height: 12.h),
            CustomEditText(
              hintText: "Confirm Password",
              width: 301.w,
              height: 56.h,
            ),
            SizedBox(height: 30.h),
            PrimaryButtonWidget(
              buttonText: "Register",
              onPressed: () {
              },
            ),
            SizedBox(height: 35.h),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    endIndent: 10,
                  ),
                ),
                Text("Or Register with", style: AppStyle.normalTextStyle),
                Expanded(
                  child: Divider(color: Colors.grey, thickness: 1, indent: 10),
                ),
              ],
            ),
            SizedBox(height: 22.h),
            Row(
              children: [
                Expanded(
                  child: SocialLoginButton(
                    iconPath: AppAssets.facebookSvgIcon,
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: SocialLoginButton(
                    iconPath: AppAssets.googleSvgIcon,
                    onTap: () {},
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: SocialLoginButton(
                    iconPath: AppAssets.appleSvgIcon,
                    onTap: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: AppStyle.normalTextPrimaryStyle,
                ),
                GestureDetector(
                  onTap: () {
                    if (GoRouter.of(context).canPop()) {
                      GoRouter.of(context).pop();
                    } else {
                      GoRouter.of(context).goNamed(AppRoutes.loginScreen);
                    }
                  },
                  child: Text("Login Now", style: AppStyle.normalTextStyle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
