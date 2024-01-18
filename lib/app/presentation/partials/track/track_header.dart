import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/track_controller.dart';
import 'package:kiri/app/presentation/widgets/app_input.dart';

class TrackHeader extends StatelessWidget {
  TrackController controller = TrackController.i;
  TrackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 40),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 190.h,
        clipBehavior: Clip.antiAlias,
        child: SafeArea(
          child: Wrap(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 8.h),
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(width: 16.w),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              SizedBox(height: 8.h),
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: controller.backIcon.value,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppInput(
                                controller: controller.destination,
                                placeholder: "Input Your Pickup",
                              ),
                              SizedBox(height: 12.h),
                              AppInput(
                                controller: TextEditingController(),
                                placeholder: "Input Your Destination",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.swap_vert),
                              SizedBox(height: 8.h),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.w),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
