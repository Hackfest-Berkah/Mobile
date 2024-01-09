import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/cache_controller.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';
import 'package:kiri/utils/get_timeperiod.dart';

class HomeHeader extends StatelessWidget {
  CacheController controller = CacheController.i;
  HomeHeader({super.key});

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
                SizedBox(height: 12.h),
                Text(
                  "Selamat ${getTimePeriod()},",
                  style: body2BTextStyle(
                    weight: FontWeight.bold,
                    color: ColorConstants.slate[25],
                  ),
                ),
                SizedBox(height: 4.h),
                Obx(
                  () => Text(
                    controller.user.value?.name ?? "......",
                    style: h1BTextStyle(
                      weight: FontWeight.w600,
                      color: ColorConstants.slate[100],
                      height: 1,
                    ),
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
