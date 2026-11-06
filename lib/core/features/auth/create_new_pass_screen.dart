import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../routing/app_routes.dart';
import '../../styling/app_colors.dart';
import '../../styling/app_style.dart';
import '../../utils/validators.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/primary_button_widget.dart';

class CreateNewPassScreen extends StatefulWidget {
  const CreateNewPassScreen({super.key});

  @override
  State<CreateNewPassScreen> createState() => _CreateNewPassScreenState();
}

class _CreateNewPassScreenState extends State<CreateNewPassScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onResetPressed() {
    if (!_formKey.currentState!.validate()) return;
    GoRouter.of(context).goNamed(AppRoutes.successScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(22.0),
        child: Form(
          key: _formKey,
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
              Text(
                "Create new password",
                style: AppStyle.primaryHeadLinesStyle,
              ),
              SizedBox(height: 10.h),
              Text(
                "Your new password must be unique from those previously used.",
                style: AppStyle.bodyTextStyle,
              ),
              SizedBox(height: 32.h),
              CustomEditText(
                hintText: "New Password",
                width: 301.w,
                controller: _passwordController,
                obscureText: _obscurePassword,
                validator: Validators.password,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() => _obscurePassword = !_obscurePassword);
                  },
                ),
              ),
              SizedBox(height: 12.h),
              CustomEditText(
                hintText: "Confirm Password",
                width: 301.w,
                controller: _confirmPasswordController,
                obscureText: _obscureConfirmPassword,
                validator: (value) =>
                    Validators.confirmPassword(value, _passwordController.text),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureConfirmPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(
                      () => _obscureConfirmPassword = !_obscureConfirmPassword,
                    );
                  },
                ),
              ),
              SizedBox(height: 38.h),
              PrimaryButtonWidget(
                buttonText: "Reset Password",
                onPressed: _onResetPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
