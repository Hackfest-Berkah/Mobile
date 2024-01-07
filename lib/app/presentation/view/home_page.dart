import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/home_controller.dart';
import 'package:kiri/app/presentation/partials/home/card_location.dart';
import 'package:kiri/app/presentation/partials/home/home_bg.dart';
import 'package:kiri/app/presentation/partials/home/home_header.dart';
import 'package:kiri/app/presentation/partials/home/card_kiripay.dart';
import 'package:kiri/app/presentation/partials/home/card_track.dart';
import 'package:kiri/app/presentation/partials/home/container_offers.dart';
import 'package:kiri/app/presentation/partials/home/home_lisence.dart';
import 'package:kiri/app/presentation/widgets/app_bottombar.dart';
import 'package:kiri/routes/app_route.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: HomeBg(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeHeader(),
            SizedBox(height: 16.h),
            Flexible(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      CardKiripay(),
                      SizedBox(height: 16.h),
                      CardLocation(),
                      SizedBox(height: 16.h),
                      CardTrack(),
                      SizedBox(height: 16.h),
                      ContainerOffer(),
                      SizedBox(height: 16.h),
                      HomeLisence(),
                      SizedBox(height: 120.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomBar(route: AppRoute.home),
    );
  }
}
