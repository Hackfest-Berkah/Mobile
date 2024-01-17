import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/topup_controller.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class TopupNominal extends StatelessWidget {
  TopupController controller = TopupController.i;
  TopupNominal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 28.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.w),
          bottomRight: Radius.circular(20.w),
        ),
        boxShadow: [ColorConstants.shadow[1]!],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Your Payment",
            style: body3TextStyle(color: ColorConstants.slate[500]),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Rp",
                  style: h1BTextStyle(
                    color: ColorConstants.primary[500],
                  ),
                ),
                Obx(
                  () => Text(
                    controller.formatter.format(controller.nominal.value),
                    style: h1BTextStyle(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
