import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/models/common/fleet/fleet_model.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';
import 'package:intl/intl.dart';

class CardTrack extends StatelessWidget {
  final FleetModel data;
  const CardTrack({
    super.key,
    required this.data,
  });

  String getScheduled() {
    DateTime now = DateTime.now();
    DateTime newTime = now.add(Duration(minutes: data.scheduled.toInt()));

    String formattedNewTime = DateFormat.jm().format(newTime);
    return formattedNewTime;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: ColorConstants.primary[500],
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
                    SizedBox(height: 8.h),
                    Text(
                      "Scheduled : ${getScheduled()}",
                      style: body3TextStyle(color: ColorConstants.slate[500]),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    data.scheduled.toInt().toString(),
                    style: h1BTextStyle(color: ColorConstants.primary[500]),
                  ),
                  Text(
                    "min",
                    style: body4TextStyle(color: ColorConstants.primary[500]),
                  ),
                ],
              ),
              SizedBox(width: 8.w),
              Icon(Icons.chevron_right, size: 30.w),
            ],
          ),
        ),
        Divider(
          color: ColorConstants.slate[300],
          height: 24.h,
        ),
      ],
    );
  }
}
