import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeScreenItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;

  const CustomHomeScreenItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: const Color(0xFFE8ECF4), width: 1.0),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(iconData, size: 24.r),
            SizedBox(height: 8.r),
            Text(
              title,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.r),
            Text(
              description,
              style: TextStyle(fontSize: 14.sp, color: const Color(0xFF6C757D)),
            ),
          ],
        ),
      ),
    );
  }
}
