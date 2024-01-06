import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/register_controller.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/app/presentation/widgets/app_input.dart';
import 'package:kiri/app/presentation/widgets/scrollable_constraints.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollableConstraints(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/logo/logo.svg",
                      width: 45.w,
                      height: 45.h,
                    ),
                    SizedBox(width: 16.w),
                    SvgPicture.asset(
                      "assets/logo/text.svg",
                      height: 30.h,
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Text(
                  "Hi, Welcome To Kiri!",
                  style: h1BTextStyle(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                AppInput(
                  controller: TextEditingController(),
                  label: "Name",
                  placeholder: "ex: John Doe",
                ),
                SizedBox(height: 16.h),
                AppInput(
                  controller: TextEditingController(),
                  label: "Email",
                  placeholder: "ex: johndoe@gmail.com",
                  prefixIcon: Icon(Icons.mail_outline),
                ),
                SizedBox(height: 16.h),
                AppInput(
                  controller: TextEditingController(),
                  label: "Password",
                  obscureText: true,
                  placeholder: "Input your password",
                  prefixIcon: Icon(
                    Icons.lock_open_outlined,
                  ),
                  hint:
                      "min. 8 characters with at least 1 capital, number, special character.",
                ),
                SizedBox(height: 16.h),
                AppInput(
                  controller: TextEditingController(),
                  label: "Confirm Password",
                  obscureText: true,
                  placeholder: "Confirm your password",
                  prefixIcon: Icon(
                    Icons.lock_open_outlined,
                  ),
                ),
                SizedBox(height: 16.h),
                AppButton(
                  onPressed: () {},
                  text: "Register",
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account? ",
                      style: body3TextStyle(
                        color: ColorConstants.slate[400],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (Get.previousRoute == AppRoute.login) {
                          Get.back();
                        } else {
                          Get.toNamed(AppRoute.login);
                        }
                      },
                      child: Text(
                        "Login",
                        style: body3TextStyle(
                          weight: FontWeight.w600,
                          color: ColorConstants.primary[500],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
