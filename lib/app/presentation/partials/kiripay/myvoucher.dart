import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class MyVoucher extends StatelessWidget {
  const MyVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.w),
        border: Border.all(
          color: ColorConstants.slate[300]!,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.primary[500],
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 11.w,
              ),
              child: SvgPicture.asset(
                "assets/icons/voucher_outline.svg",
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 20.h,
                ),
                width: 1.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Disc. Up To 80% for New User!",
                      style: body3BTextStyle(
                        color: ColorConstants.slate[600],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      "Expired in 20 Jan 2024",
                      style: body4TextStyle(
                        color: ColorConstants.slate[500],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 3.h),
                        decoration: BoxDecoration(
                          color: ColorConstants.primary[500],
                          borderRadius: BorderRadius.circular(6.w),
                        ),
                        child: Text(
                          "Use Now",
                          style: body6BTextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
