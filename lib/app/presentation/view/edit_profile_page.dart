import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/edit_profile_controller.dart';
import 'package:kiri/app/presentation/partials/edit_profile/edit_profile_scaffold.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/app/presentation/widgets/app_input.dart';

class EditProfilePage extends GetView<EditProfileController> {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return EditProfileScaffold(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/pp.png",
                width: 110.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 12.h),
            AppInput(
              controller: controller.form['name']!,
              label: "Name",
              placeholder: "Your Current Name",
            ),
            SizedBox(height: 12.h),
            AppInput(
              controller: controller.form['email']!,
              label: "Email",
              placeholder: "Your Current Email",
            ),
            SizedBox(height: 12.h),
            AppInput(
              controller: controller.form['phone']!,
              label: "Phone",
              placeholder: "Your Current Name",
              keyboardType: TextInputType.number,
            ),
            Expanded(child: Container()),
            AppButton(
              onPressed: () {},
              text: "Edit Profile",
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
