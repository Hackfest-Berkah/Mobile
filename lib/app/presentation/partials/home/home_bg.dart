import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kiri/styles/color_constants.dart';

class HomeBg extends StatelessWidget {
  final Widget child;
  const HomeBg({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorConstants.gradient[2],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: 1.sw,
            height: 1.sh,
          ),
          Positioned(
            top: -40.h,
            right: -30.w,
            child: SvgPicture.asset(
              "assets/logo/logo.svg",
              width: 140.w,
              height: 140.h,
              colorFilter: ColorFilter.mode(
                ColorConstants.primary[700]!.withOpacity(.75),
                BlendMode.srcIn,
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: child,
          ),
        ],
      ),
    );
  }
}
