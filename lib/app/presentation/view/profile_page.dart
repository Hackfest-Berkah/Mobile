import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/profile_controller.dart';
import 'package:kiri/app/models/common/profile_section.dart';
import 'package:kiri/app/presentation/partials/profile/profile_card_wrapper.dart';
import 'package:kiri/app/presentation/partials/profile/profile_scaffold.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/styles/text_styles.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProfileCardWrapper(
            title: "Profile Settings",
            data: [
              ProfileSection(
                icon: Icon(
                  Icons.edit,
                  size: 22.w,
                ),
                text: "Edit My Profile",
              ),
              ProfileSection(
                icon: Icon(
                  Icons.password,
                  size: 22.w,
                ),
                text: "Change Password",
              ),
              ProfileSection(
                icon: Icon(
                  Icons.emergency,
                  size: 22.w,
                ),
                text: "Emergency Contact",
              ),
              ProfileSection(
                icon: SvgPicture.asset(
                  "assets/icons/google.svg",
                  width: 10.w,
                  height: 10.h,
                  fit: BoxFit.fill,
                ),
                text: "Link to Google",
              ),
            ],
          ),
          SizedBox(height: 12.h),
          ProfileCardWrapper(
            title: "KiriPay Settings",
            data: [
              ProfileSection(
                icon: Icon(
                  Icons.dialpad,
                  size: 22.w,
                ),
                text: "PIN Authentication",
              ),
            ],
          ),
          SizedBox(height: 12.h),
          ProfileCardWrapper(
            title: "Help Center",
            data: [
              ProfileSection(
                icon: Icon(
                  Icons.language,
                  size: 22.w,
                ),
                text: "Change Language",
              ),
              ProfileSection(
                icon: Icon(
                  Icons.headset_mic,
                  size: 22.w,
                ),
                text: "Customer Service",
              ),
              ProfileSection(
                icon: Icon(
                  Icons.question_mark,
                  size: 22.w,
                ),
                text: "Frequently Ask Question",
              ),
              ProfileSection(
                icon: Icon(
                  Icons.info_outline,
                  size: 22.w,
                ),
                text: "About Kiri",
              ),
            ],
          ),
          SizedBox(height: 16.h),
          AppButton(
            onPressed: () {},
            text: "Logout",
            variant: AppButtonVariant.secondary,
            textStyle: body3BTextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
