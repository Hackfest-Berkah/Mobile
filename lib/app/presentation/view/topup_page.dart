import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/topup_controller.dart';
import 'package:kiri/app/presentation/partials/topup/topup_guide.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/app/presentation/widgets/app_header.dart';
import 'package:kiri/app/presentation/widgets/app_input.dart';
import 'package:kiri/app/presentation/widgets/scrollable_constraints.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class TopupPage extends GetView<TopupController> {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: "Top Up",
        background: Colors.white,
      ),
      body: ScrollableConstraints(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 32.w,
                vertical: 24.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.w),
                  bottomRight: Radius.circular(20.w),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppInput(
                    controller: controller.inputController,
                    onChange: (e) {
                      if (e.isEmpty) {
                        controller.nominal.value = 0;
                        return;
                      }
                      int? res = int.tryParse(e);
                      if (res != null) {
                        controller.nominal.value = res;
                      }
                    },
                    label: "Input Your Nominal",
                    prefixIcon: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rp",
                            style: body1BTextStyle(
                              color: ColorConstants.primary[500],
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Container(
                            height: 16.h,
                            width: 1.w,
                            color: ColorConstants.slate[300],
                          )
                        ],
                      ),
                    ),
                    placeholder: "10.000",
                    prefixConstraints: Size(60.w, 50.h),
                    hintStyle: body1BTextStyle(
                      color: ColorConstants.slate[200],
                    ),
                    keyboardType: TextInputType.number,
                    textStyle: body1BTextStyle(),
                    gap: 10.h,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 16.h),
                    TopupGuide(),
                    SizedBox(height: 40.h),
                    Expanded(child: Container()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Problem with top up? ",
                          style: body3TextStyle(
                              color: ColorConstants.slate[400], height: 1),
                        ),
                        Text(
                          "Chat with CS",
                          style: body3BTextStyle(
                              color: ColorConstants.primary[500], height: 1),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Obx(
                      () => AppButton(
                        onPressed: controller.nominal.value == 0 ? null : () {},
                        text: "Top Up",
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
