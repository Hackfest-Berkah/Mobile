import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/onboard_controller.dart';
import 'package:kiri/app/presentation/partials/onboard/bottom_navigator.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class OnboardPage extends GetView<OnboardController> {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (e) {
              controller.current.value = e;
            },
            physics: BouncingScrollPhysics(),
            children: controller.contents
                .map(
                  (e) => Column(
                    children: [
                      SizedBox(height: 80.h),
                      SvgPicture.asset(
                        e.image,
                        width: e.width,
                        height: e.height,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        e.title,
                        style: h1BTextStyle(
                          color: ColorConstants.primary[500],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(
                        width: 316.w,
                        child: Text(
                          e.caption,
                          style: body2TextStyle(
                            color: ColorConstants.slate[700],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigator(),
          ),
        ],
      ),
    );
  }
}
