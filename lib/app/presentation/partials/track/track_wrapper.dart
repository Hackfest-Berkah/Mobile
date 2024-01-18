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
      child: DraggableScrollableSheet(
        snap: true,
        snapAnimationDuration: Duration(milliseconds: 200),
        initialChildSize: .15,
        minChildSize: .15,
        maxChildSize: .35,
        builder: (context, scrollController) => SingleChildScrollView(
          controller: scrollController,
          child: Container(
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
            height: 0.35.sh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
    );
  }
}
