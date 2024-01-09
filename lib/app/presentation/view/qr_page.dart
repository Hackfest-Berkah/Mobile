import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/qr_controller.dart';
import 'package:kiri/app/presentation/widgets/animation/fadein_left.dart';
import 'package:kiri/app/presentation/widgets/app_bottombar.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/app/presentation/widgets/card_voucher.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class QrPage extends GetView<QrController> {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: ColorConstants.gradient[2],
          color: Colors.white,
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    "assets/logo/kiriqr.svg",
                  ),
                ),
                SizedBox(height: 90.h),
                Text(
                  "Show your QR code to scanner",
                  style: body1BTextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.h),
                Text(
                  "This QR code must be used as tap-in (ride fleet) and tap-out (drop-off fleet)",
                  style: body3TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 28.h),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.w),
                  ),
                  padding: EdgeInsets.all(12.w),
                  child: Image.asset(
                    "assets/images/qr.png",
                    width: 240.w,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 28.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Obx(
                        () => Text(
                          controller.isUsed.value
                              ? "Currently using:"
                              : "Want discount with voucher?",
                          style: body3BTextStyle(
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Obx(
                      () => AppButton(
                        backgroundColor: Colors.white,
                        foregroundColor: ColorConstants.primary[500],
                        onPressed: () {
                          controller.isUsed.value = true;
                        },
                        text: controller.isUsed.value
                            ? "Change Voucher"
                            : "Use Voucher",
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 5.h,
                        ),
                        textStyle: body6BTextStyle(
                          color: ColorConstants.primary[500],
                        ),
                      ),
                    ),
                  ],
                ),
                Obx(
                  () => controller.isUsed.value
                      ? Column(
                          children: [
                            SizedBox(height: 20.h),
                            FadeInFromLeft(
                              duration: Duration(milliseconds: 250),
                              child: CardVoucher(),
                            ),
                          ],
                        )
                      : Container(),
                ),
                SizedBox(height: 52.h),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(
        route: AppRoute.qr,
      ),
    );
  }
}
