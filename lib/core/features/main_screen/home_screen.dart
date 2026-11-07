import 'package:finance/core/features/main_screen/widgets/carousel_slider.dart';
import 'package:finance/core/features/main_screen/widgets/custom_home_screen_item.dart';
import 'package:finance/core/features/main_screen/widgets/home_top_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            HomeTopItem(),
            SizedBox(height: 24.h),
            const CardsSlider(),
            SizedBox(height: 16.h),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.w,
                mainAxisExtent: 130.w,
              ),
              children: const [
                CustomHomeScreenItem(
                  title: "Send Money",
                  description: "Take acc to acc",
                  iconData: Icons.send,
                ),
                CustomHomeScreenItem(
                  title: "Pay the bill",
                  description: "Lorem ipsum",
                  iconData: Icons.credit_card,
                ),
                CustomHomeScreenItem(
                  title: "Request",
                  description: "Lorem ipsum",
                  iconData: Icons.send,
                ),
                CustomHomeScreenItem(
                  title: "Contact",
                  description: "Lorem ipsum",
                  iconData: Icons.group,
                ),
              ],
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
