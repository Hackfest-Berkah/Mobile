import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class HistoryNone extends StatelessWidget {
  const HistoryNone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 60.h),
        SvgPicture.asset(
          "assets/images/no_history.svg",
        ),
        SizedBox(height: 16.h),
        Text(
          "There’s nothing here,\nstart ride now!",
          style: h4BTextStyle(color: ColorConstants.slate[400]),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
