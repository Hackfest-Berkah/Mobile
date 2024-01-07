import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class CardKiripay extends StatelessWidget {
  const CardKiripay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: Offset(0, 4),
            blurRadius: 10.sp,
          ),
        ],
        borderRadius: BorderRadius.circular(16.w),
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.w,
                vertical: 16.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/logo/kiripay.svg",
                    height: 11.h,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Rp",
                        style: body4TextStyle(
                          color: ColorConstants.primary[500],
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        "100.000,00",
                        style: h4BTextStyle(
                          weight: FontWeight.w800,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 16.w,
                        color: ColorConstants.primary[500],
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Icon(
                        Icons.stars,
                        color: ColorConstants.primary[500],
                        size: 16.w,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        "200",
                        style: body4BTextStyle(),
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        "KiriPoints",
                        style: body4TextStyle(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(80.w, 100.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              backgroundColor: ColorConstants.primary[600],
            ),
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_balance_wallet,
                ),
                SizedBox(height: 1.h),
                Text(
                  "Top Up",
                  style: TextStyle(
                    fontSize: 10.w,
                    color: ColorConstants.slate[25],
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
