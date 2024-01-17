import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/cache_controller.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';
import 'package:kiri/utils/currency_formatter.dart';

class KiripayBalance extends StatelessWidget {
  CacheController controller = CacheController.i;
  KiripayBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Balance",
                style: body3TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rp",
                    style: body3TextStyle(
                      color: ColorConstants.primary[300],
                    ),
                  ),
                  SizedBox(width: 3.w),
                  Obx(
                    () => Text(
                      currencyFormatter(
                          controller.user.value?.kiriBalance ?? 0),
                      style: h1BTextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Icon(
                    Icons.stars_rounded,
                    color: ColorConstants.primary[500],
                    size: 10.w,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    controller.user.value?.kiriPoint.toString() ?? '0',
                    style: body4BTextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    "KiriPoints",
                    style: body4TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        AppButton(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          borderRadius: BorderRadius.circular(15.w),
          onPressed: () {
            Get.toNamed(AppRoute.topup);
          },
          text: "",
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/wallet_plus.svg",
                width: 21.w,
              ),
              SizedBox(width: 2.w),
              Text(
                "Top Up",
                style: body4TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
