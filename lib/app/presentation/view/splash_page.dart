import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2), () {
        Get.offNamed(AppRoute.onboarding);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: ColorConstants.gradient[1]),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/logo/logo_white.svg",
                width: 115.w,
              ),
              SizedBox(height: 36.h),
              SvgPicture.asset(
                "assets/logo/text.svg",
                width: 114.w,
                colorFilter: ColorFilter.mode(
                  ColorConstants.slate[25]!,
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                "connect everywhere.",
                style: body4TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
