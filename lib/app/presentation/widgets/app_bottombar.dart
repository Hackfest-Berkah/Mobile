import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class AppBottomBar extends StatelessWidget {
  final String route;
  const AppBottomBar({
    super.key,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "bottom_bar",
      child: Stack(
        children: [
          SizedBox(
            height: 110.h,
            width: 1.sw,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  ColorConstants.shadow[3]!,
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.w),
                  topRight: Radius.circular(15.w),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.home);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/logo/logo.svg",
                          height: 26.h,
                          colorFilter: route == AppRoute.home
                              ? ColorFilter.mode(
                                  ColorConstants.primary[500]!,
                                  BlendMode.srcIn,
                                )
                              : ColorFilter.mode(
                                  ColorConstants.slate[400]!,
                                  BlendMode.srcIn,
                                ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "Home",
                          style: body6BTextStyle(
                            color: route == AppRoute.home
                                ? ColorConstants.primary[500]
                                : ColorConstants.slate[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.kiriPay);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          "assets/logo/kiripay_nav.svg",
                          width: 37.w,
                          colorFilter: ColorFilter.mode(
                            route == AppRoute.kiriPay
                                ? ColorConstants.primary[500]!
                                : ColorConstants.slate[400]!,
                            BlendMode.srcIn,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Payment",
                          style: body6BTextStyle(
                            color: route == AppRoute.kiriPay
                                ? ColorConstants.primary[500]
                                : ColorConstants.slate[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 15.h),
                      Text(
                        "Scan QR",
                        style: body5TextStyle(
                          weight: route == AppRoute.qr
                              ? FontWeight.bold
                              : FontWeight.w500,
                          color: route == AppRoute.qr
                              ? ColorConstants.primary[500]
                              : ColorConstants.slate[400],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.history,
                          size: 30.h,
                          color: route == AppRoute.history
                              ? ColorConstants.primary[500]
                              : ColorConstants.slate[400],
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          "History",
                          style: body6BTextStyle(
                            color: ColorConstants.slate[400],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.profile);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 30.h,
                          color: route == AppRoute.profile
                              ? ColorConstants.primary[500]
                              : ColorConstants.slate[400],
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          "Profile",
                          style: body6BTextStyle(
                            color: route == AppRoute.profile
                                ? ColorConstants.primary[500]
                                : ColorConstants.slate[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 65.w,
                height: 65.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: ColorConstants.gradient[1],
                  borderRadius: BorderRadius.circular(65.w),
                ),
                child: MaterialButton(
                  onPressed: () {
                    if (Get.previousRoute == AppRoute.qr) {
                      Get.back();
                    } else {
                      Get.toNamed(AppRoute.qr);
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.w),
                  ),
                  padding: EdgeInsets.all(8.w),
                  height: 65.h,
                  minWidth: 65.w,
                  child: Icon(
                    Icons.qr_code_scanner,
                    size: 30.w,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
