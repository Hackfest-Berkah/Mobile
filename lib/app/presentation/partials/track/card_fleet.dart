import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/models/common/fleet/fleet_model.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class CardFleet extends StatelessWidget {
  final FleetModel data;
  const CardFleet({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
          color: Colors.white,
          boxShadow: [ColorConstants.shadow[1]!],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: ColorConstants.slate[500],
                  borderRadius: BorderRadius.circular(4.w),
                ),
                child: Text(
                  data.route,
                  style: h5BTextStyle(
                    color: ColorConstants.slate[25],
                    weight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              data.plate,
              style: h2BTextStyle(),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text(
                  "Capacity : ",
                  style: body3TextStyle(
                    color: ColorConstants.slate[500],
                  ),
                ),
                Text(
                  data.currentCapacity.toString(),
                  style: body3BTextStyle(
                    color: ColorConstants.primary[500],
                  ),
                ),
                Text(
                  " People",
                  style: body3TextStyle(
                    color: ColorConstants.slate[500],
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Text(
                  "Maximum : ",
                  style: body3TextStyle(
                    color: ColorConstants.slate[500],
                  ),
                ),
                Text(
                  data.maxCapacity.toString(),
                  style: body3BTextStyle(
                    color: ColorConstants.primary[500],
                  ),
                ),
                Text(
                  " People",
                  style: body3TextStyle(
                    color: ColorConstants.slate[500],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            AppButton(
              onPressed: () {},
              text: "Ride This Fleet",
            ),
          ],
        ),
      ),
    );
  }
}
