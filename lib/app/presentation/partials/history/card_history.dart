import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kiri/app/models/response/history/history_model.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class CardHistory extends StatelessWidget {
  final HistoryResponse data;
  const CardHistory({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.w),
      ),
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
        horizontal: 20.w,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 35.w,
            child: SvgPicture.asset(
              "assets/logo/kiripay_nav.svg",
              colorFilter: ColorFilter.mode(
                ColorConstants.primary[500]!,
                BlendMode.srcIn,
              ),
              width: 35.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20.w),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  data.type,
                  style: body3BTextStyle(),
                ),
                SizedBox(height: 8.h),
                Text(
                  data.amount,
                  style: body4BTextStyle(
                    color: Color(0xff34C759),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  data.time,
                  style: body4TextStyle(color: ColorConstants.slate[400]),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            size: 30.w,
          ),
        ],
      ),
    );
  }
}
