import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kiri/app/controller/home_controller.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class CardTrack extends StatelessWidget {
  HomeController controller = HomeController.i;
  static const CameraPosition initCoordinate = CameraPosition(
    target: LatLng(
      -7.9532062,
      112.6108778,
    ),
    zoom: 14.5,
  );

  CardTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.w),
        boxShadow: [ColorConstants.shadow[2]!],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Track The Fleet",
                style: h5BTextStyle(),
              ),
              GestureDetector(
                onTap: () {
                  // TOOD: REDIRECT View More
                },
                child: Text(
                  "View More",
                  style: body4TextStyle(color: ColorConstants.primary[500]),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Obx(
            () => Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.isBus.value = true;
                    },
                    style: ElevatedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                      side: BorderSide(
                        color: controller.isBus.value
                            ? ColorConstants.primary[500]!
                            : ColorConstants.slate[300]!,
                      ),
                      elevation: 0,
                      backgroundColor: controller.isBus.value
                          ? ColorConstants.primary[100]
                          : Colors.white,
                      shadowColor: Colors.transparent,
                      foregroundColor: ColorConstants.primary[500],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/bus.png",
                          width: 28.w,
                          height: 28.h,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "City Bus",
                          style: body3TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.isBus.value = false;
                    },
                    style: ElevatedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                      side: BorderSide(
                        color: !controller.isBus.value
                            ? ColorConstants.primary[500]!
                            : ColorConstants.slate[300]!,
                      ),
                      elevation: 0,
                      backgroundColor: !controller.isBus.value
                          ? ColorConstants.primary[100]
                          : Colors.white,
                      shadowColor: Colors.transparent,
                      foregroundColor: ColorConstants.primary[500],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/taxi.png",
                          width: 28.w,
                          height: 28.h,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "Shared Taxi",
                          style: body3TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConstants.slate[300]!,
              ),
              borderRadius: BorderRadius.circular(8.w),
            ),
            clipBehavior: Clip.antiAlias,
            width: 1.sw,
            height: 160.h,
            child: GoogleMap(
              myLocationEnabled: true,
              initialCameraPosition: initCoordinate,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {},
              zoomControlsEnabled: false,
            ),
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }
}
