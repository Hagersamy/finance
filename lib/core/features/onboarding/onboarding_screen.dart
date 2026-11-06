import 'package:finance/core/widgets/primary_button_widget.dart';
import 'package:finance/core/widgets/primary_outlined_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../app_assets.dart';
import '../../routing/app_routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.introLogo,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 21.h),
          PrimaryButtonWidget(
            buttonText: "Login",
            width: 301.w,
            height: 56.h,
            onPressed: () {
              GoRouter.of(context).goNamed(AppRoutes.loginScreen);
            },
          ),
          SizedBox(height: 15.h),
          PrimaryOutlinedButtonWidget(
            buttonText: "Register",
            width: 301.w,
            height: 56.h,
            onPressed: () {
              GoRouter.of(context).goNamed(AppRoutes.registerScreen);
            },
          ),
          SizedBox(height: 15.h),
          TextButton(
            onPressed: () {
              GoRouter.of(context).goNamed(AppRoutes.MainScreen);
            },
             child:Text( "Continue as Guest?",style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
          )],
      ),
    );
  }
}
