import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class CardVoucherUsed extends StatelessWidget {
  const CardVoucherUsed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.w),
      ),
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.primary[700]!.withOpacity(.5),
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
                  horizontal: 24.w,
                  vertical: 20.h,
                ),
                width: 1.sw,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  "Disc. Up To 80% for\nNew User!",
                  style: body3BTextStyle(
                    color: ColorConstants.slate[600],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
