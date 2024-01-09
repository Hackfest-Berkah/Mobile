import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/presentation/partials/kiripay/myvoucher.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class VoucherStore extends StatelessWidget {
  const VoucherStore({super.key});

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
                "Voucher Store",
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
          SizedBox(height: 16.h),
          MyVoucher(),
          SizedBox(height: 16.h),
          MyVoucher(),
          SizedBox(height: 16.h),
          MyVoucher(),
          SizedBox(height: 16.h),
          MyVoucher(),
          SizedBox(height: 16.h),
          MyVoucher(),
        ],
      ),
    );
  }
}
