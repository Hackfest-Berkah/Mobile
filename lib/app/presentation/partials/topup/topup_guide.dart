import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/presentation/widgets/bullet_list.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class TopupGuide extends StatelessWidget {
  const TopupGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.w),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: BulletList(
        strings: [
          "Max. top up payment per transaction are Rp1.000.000.",
          "Max. accumulative balance per account are Rp10.000.000."
        ],
        textStyle: body3TextStyle(color: ColorConstants.slate[500]),
      ),
    );
  }
}
