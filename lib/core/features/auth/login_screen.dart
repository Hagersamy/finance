import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:finance/core/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../app_assets.dart';
import '../../routing/app_routes.dart';
import '../../widgets/primary_button_widget.dart';
import '../../widgets/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            Text("Welcome back! Again!", style: AppStyle.primaryHeadLinesStyle),
            SizedBox(height: 32.h),
            CustomEditText(
              hintText: "Enter Your Email",
              width: 301.w,
              height: 56.h,
            ),
            SizedBox(height: 15.h),
            CustomEditText(
              hintText: "Enter Your Password",
              width: 301.w,
              height: 56.h,
              suffixIcon: Icon(Icons.visibility),
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.centerRight,
              child: Text("Forget Password?", style: AppStyle.normalTextStyle),
            ),
            SizedBox(height: 30.h),
            PrimaryButtonWidget(
              buttonText: "Login",
              onPressed: () {
                GoRouter.of(context).goNamed(AppRoutes.loginScreen);
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
                Text("Or Login with", style: AppStyle.normalTextStyle),
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
            SizedBox(height: 155.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: AppStyle.normalTextPrimaryStyle,
                ),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
                  },
                  child: Text("Register Now", style: AppStyle.normalTextStyle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
