import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Selamat Pagi,",
                  style: body2BTextStyle(
                    weight: FontWeight.bold,
                    color: ColorConstants.slate[25],
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "Purnomo",
                  style: h1BTextStyle(
                    weight: FontWeight.w600,
                    color: ColorConstants.slate[100],
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: ColorConstants.primary[600],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.w),
            ),
            padding: EdgeInsets.all(8.w),
            height: 40.h,
            minWidth: 40.w,
            child: Icon(
              Icons.notifications_outlined,
              size: 22.w,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
