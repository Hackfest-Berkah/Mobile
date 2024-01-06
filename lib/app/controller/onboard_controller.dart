import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/models/onboard.dart';

class OnboardController extends GetxController {
  static OnboardController get i => Get.find<OnboardController>();

  RxInt current = 0.obs;
  List<Onboard> contents = <Onboard>[
    Onboard(
      caption:
          "No more waiting around for public transportation with uncertain schedules, directions, and passengers. All of this can be monitored through one apps.",
      image: "assets/images/onboarding_1.svg",
      title: "Mobility Wasn't Easy\nLike This Before",
      width: 358.w,
      height: 358.h,
    ),
    Onboard(
      caption:
          "No more waiting around for public transportation with uncertain schedules, directions, and passengers. All of this can be monitored through one apps.",
      image: "assets/images/onboarding_2.svg",
      title: "Live Track Your\nDestination Fleet",
      width: 358.w,
      height: 358.h,
    ),
    Onboard(
      caption:
          "After your fleet arrives, don't forget to tap-in to get in and when you want to get off, tap-out and the balance will automatically deduct your KiriPay.",
      image: "assets/images/onboarding_3.svg",
      title: "Tap-to-ride\nYour Fleet",
      width: 358.w,
      height: 358.h,
    ),
  ];
}
