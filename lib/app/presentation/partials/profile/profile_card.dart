import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/models/common/profile_section.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class ProfileCard extends StatelessWidget {
  final ProfileSection data;
  const ProfileCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: ColorConstants.primary[500]!.withOpacity(.2),
      onTap: data.redirect == null
          ? null
          : () {
              Get.toNamed(data.redirect!);
            },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                children: [
                  SizedBox(
                    width: 22.w,
                    height: 22.h,
                    child: data.icon,
                  ),
                  SizedBox(width: 16.w),
                  Text(
                    data.text,
                    style: body3TextStyle(),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 22.w,
            ),
          ],
        ),
      ),
    );
  }
}
