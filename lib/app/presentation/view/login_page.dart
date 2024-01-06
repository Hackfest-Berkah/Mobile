import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/login_controller.dart';
import 'package:kiri/app/presentation/widgets/app_button.dart';
import 'package:kiri/app/presentation/widgets/app_input.dart';
import 'package:kiri/app/presentation/widgets/scrollable_constraints.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

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
                SizedBox(height: 150.h),
                Text(
                  "Welcome Back!",
                  style: h1BTextStyle(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
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
                ),
                SizedBox(height: 16.h),
                AppButton(
                  onPressed: () {},
                  text: "Login",
                ),
                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Doesn’t have an account? ",
                      style: body3TextStyle(
                        color: ColorConstants.slate[400],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.register);
                      },
                      child: Text(
                        "Create Account",
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
