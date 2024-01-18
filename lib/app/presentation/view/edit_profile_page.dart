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
        child: Form(
          key: controller.formKey,
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
                onChange: (e) {
                  controller.isChanged.value = true;
                },
                validator: (e) {
                  if (e!.isEmpty) {
                    return "Name can't be empty";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.h),
              AppInput(
                controller: controller.form['email']!,
                label: "Email",
                placeholder: "Your Current Email",
                onChange: (e) {
                  controller.isChanged.value = true;
                },
                validator: (e) {
                  if (e!.isEmpty) {
                    return "Email can't be empty";
                  }
                  if (!e.isEmail) {
                    return "Email invalid";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.h),
              AppInput(
                controller: controller.form['phone']!,
                label: "Phone",
                placeholder: "Your Current Phone",
                keyboardType: TextInputType.number,
                onChange: (e) {
                  controller.isChanged.value = true;
                },
                validator: (e) {
                  if (e!.isEmpty) {
                    return "Phone can't be empty";
                  }
                  return null;
                },
              ),
              Expanded(child: Container()),
              Obx(
                () => AppButton(
                  onPressed: controller.isChanged.value
                      ? controller.editProfile
                      : null,
                  text: "Save Changes",
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
