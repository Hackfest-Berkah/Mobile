import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/track_controller.dart';
import 'package:kiri/app/presentation/partials/track/card_track.dart';
import 'package:kiri/styles/color_constants.dart';

class TrackWrapper extends StatelessWidget {
  TrackController controller = TrackController.i;
  TrackWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Obx(
        () => DraggableScrollableSheet(
          snap: true,
          snapAnimationDuration: Duration(milliseconds: 200),
          initialChildSize: controller.focus.value == null ? .15 : .01,
          minChildSize: controller.focus.value == null ? .15 : .01,
          maxChildSize: controller.focus.value == null ? .35 : .01,
          builder: (context, scrollController) => SingleChildScrollView(
            controller: scrollController,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.w),
                  topRight: Radius.circular(15.w),
                ),
                boxShadow: [ColorConstants.shadow[1]!],
              ),
              clipBehavior: Clip.antiAlias,
              height: controller.focus.value == null ? 0.35.sh : 0.sh,
              child: Wrap(
                children: [
                  Align(
                    child: Container(
                      width: 40.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: ColorConstants.slate[200],
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: .3.sh,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Obx(
                        () => Column(
                          children: controller.data
                              .map((element) => CardTrack(data: element))
                              .toList(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
