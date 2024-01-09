import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/presentation/partials/kiripay/myvoucher.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class KiripayMyvoucher extends StatelessWidget {
  const KiripayMyvoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.w),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Voucher",
                style: h5BTextStyle(),
              ),
              Text(
                "See All",
                style: body4TextStyle(
                  color: ColorConstants.primary[500],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          IntrinsicHeight(
            child: SizedBox(
              height: 140.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 250.w,
                    child: MyVoucher(),
                  ),
                  SizedBox(
                    width: 250.w,
                    child: MyVoucher(),
                  ),
                  SizedBox(
                    width: 250.w,
                    child: MyVoucher(),
                  ),
                  SizedBox(
                    width: 250.w,
                    child: MyVoucher(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          AppButton(
            onPressed: () {},
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            text: "",
            type: AppButtonType.outlined,
            color: ColorConstants.slate[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Redeem Code",
                  style: body3BTextStyle(
                    color: ColorConstants.primary[500],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: ColorConstants.primary[500],
                  size: 20.w,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
