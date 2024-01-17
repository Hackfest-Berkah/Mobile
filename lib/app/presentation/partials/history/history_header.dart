import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/history_controller.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class HistoryHeader extends StatelessWidget {
  static HistoryController controller = HistoryController.i;
  const HistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.w),
          bottomRight: Radius.circular(15.w),
        ),
        boxShadow: [ColorConstants.shadow[1]!],
      ),
      child: Column(
        children: [
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "History",
                style: h1BTextStyle(),
              ),
              Icon(
                Icons.headset_mic,
                size: 21.sp,
                color: ColorConstants.primary[500],
              ),
            ],
          ),
          SizedBox(height: 24.h),
          Row(
            children: [
              Obx(
                () => MaterialButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  color: controller.option.value == 1
                      ? ColorConstants.primary[500]
                      : ColorConstants.slate[50],
                  elevation: 0,
                  highlightElevation: 0,
                  hoverColor: Colors.transparent,
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {
                    controller.option.value = 1;
                  },
                  child: Text(
                    "KiriPay",
                    style: body3TextStyle(
                      weight:
                          controller.option.value == 1 ? FontWeight.bold : null,
                      color: controller.option.value == 1
                          ? ColorConstants.slate[50]
                          : ColorConstants.slate[600],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Obx(
                () => MaterialButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  color: controller.option.value == 2
                      ? ColorConstants.primary[500]
                      : ColorConstants.slate[50],
                  elevation: 0,
                  highlightElevation: 0,
                  hoverColor: Colors.transparent,
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {
                    controller.option.value = 2;
                  },
                  child: Text(
                    "Fleet",
                    style: body3TextStyle(
                      weight:
                          controller.option.value == 2 ? FontWeight.bold : null,
                      color: controller.option.value == 2
                          ? ColorConstants.slate[50]
                          : ColorConstants.slate[600],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
