import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/models/offer.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class CardOffer extends StatelessWidget {
  final Offer data;
  const CardOffer({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.w),
        boxShadow: [ColorConstants.shadow[2]!],
        color: Colors.white,
        border: Border.all(
          color: ColorConstants.slate[200]!,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset(data.thumbnail),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: body2BTextStyle(),
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 16.sp,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "Available till ${data.deadline}",
                      style: body4TextStyle(weight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                AppButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                    horizontal: 20.w,
                  ),
                  text: "Use Now",
                  textStyle: body6BTextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
