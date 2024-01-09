import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class ContainerOffer extends StatelessWidget {
  const ContainerOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.w),
          boxShadow: [ColorConstants.shadow[2]!],
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Offers For You!",
                  style: h5BTextStyle(),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.offers);
                  },
                  child: Text(
                    "See All",
                    style: body4TextStyle(color: ColorConstants.primary[500]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 160.h,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...[1, 2]
                        .map(
                          (e) => Container(
                            margin: EdgeInsets.only(right: 15.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.w),
                            ),
                            width: 280.w,
                            clipBehavior: Clip.antiAlias,
                            height: 160.h,
                            child: Image.asset(
                              "assets/images/voucher_$e.png",
                              width: 280.w,
                              height: 160.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
