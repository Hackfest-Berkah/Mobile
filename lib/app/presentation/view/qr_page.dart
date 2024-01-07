import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiri/app/presentation/widgets/app_bottombar.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class QrPage extends StatelessWidget {
  const QrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: ColorConstants.gradient[2],
          color: Colors.white,
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 12.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    "assets/logo/kiriqr.svg",
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(),
                ),
                Text(
                  "Show your QR code to scanner",
                  style: body1BTextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 52.h),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.w),
                  ),
                  padding: EdgeInsets.all(12.w),
                  child: Image.asset(
                    "assets/images/qr.png",
                    width: 240.w,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 52.h),
                Text(
                  "This QR code must be used as tap-in (ride fleet)\nand tap-out (drop-off fleet)",
                  style: body3BTextStyle(
                    color: Colors.white,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 52.h),
                Text(
                  "Provided by KiriApp.",
                  style: body6TextStyle(color: Colors.white),
                ),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(
        route: AppRoute.qr,
      ),
    );
  }
}
