import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/cache_controller.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class CardLocation extends StatelessWidget {
  const CardLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: Offset(0, 4),
            blurRadius: 10.sp,
          ),
        ],
        borderRadius: BorderRadius.circular(15.w),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: ColorConstants.primary[500],
                size: 16.w,
              ),
              SizedBox(width: 4.w),
              Text(
                "Your Location",
                style: body3BTextStyle(
                  color: ColorConstants.primary[500],
                ),
              ),
            ],
          ),
          SizedBox(width: 16.w),
          Flexible(
            child: Obx(
              () => Text(
                CacheController.i.location.value,
                overflow: TextOverflow.ellipsis,
                style: body4TextStyle(
                  color: ColorConstants.slate[800],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
