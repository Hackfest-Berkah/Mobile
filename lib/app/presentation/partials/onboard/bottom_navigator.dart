import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/onboard_controller.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class BottomNavigator extends StatelessWidget {
  OnboardController controller = OnboardController.i;
  BottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [0, 1, 2]
                .map(
                  (e) => Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      width: 11.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.w),
                        color: ColorConstants
                            .primary[e == controller.current.value ? 200 : 400],
                      ),
                      height: 11.w,
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(height: 15.h),
          AppButton(
            onPressed: () {
              Get.toNamed(AppRoute.login);
            },
            text: 'Login',
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Doesn’t have an account? ",
                style: body3TextStyle(
                  color: ColorConstants.slate[400],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.register);
                },
                child: Text(
                  "Create Account",
                  style: body3TextStyle(
                    weight: FontWeight.w600,
                    color: ColorConstants.primary[500],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
