import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/global_controller.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorConstants.gradient[4],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.w),
          bottomRight: Radius.circular(15.w),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: h1BTextStyle(
                      fontFamily: 'Kumbh',
                      color: Colors.white,
                    ),
                  ),
                  AppButton(
                    onPressed: () {},
                    text: "SOS",
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 16.h,
                    ),
                    variant: AppButtonVariant.secondary,
                    textStyle: body3BTextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Image.asset(
                    "assets/images/pp.png",
                    width: 65.w,
                  ),
                  SizedBox(width: 20.w),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Obx(
                          () => Text(
                            GlobalController.i.user.value?.name ?? "",
                            style: h4BTextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Obx(
                          () => Text(
                            GlobalController.i.user.value?.phone != null &&
                                    GlobalController.i.user.value?.phone != ""
                                ? GlobalController.i.user.value!.phone
                                : "Phone number not set",
                            style: body3TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
