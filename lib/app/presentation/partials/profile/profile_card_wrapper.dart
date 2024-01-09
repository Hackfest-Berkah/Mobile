import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/models/common/profile_section.dart';
import 'package:kiri/app/presentation/partials/profile/profile_card.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class ProfileCardWrapper extends StatelessWidget {
  final List<ProfileSection> data;
  final String title;
  const ProfileCardWrapper({
    super.key,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: body3BTextStyle(color: Colors.black),
        ),
        SizedBox(height: 12.h),
        Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.w),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(data.length, (index) => index + 1)
                .map(
                  (e) => Column(
                    children: [
                      ProfileCard(
                        data: data[e - 1],
                      ),
                      e != data.length
                          ? Divider(
                              color: ColorConstants.slate[300],
                            )
                          : Container(),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
