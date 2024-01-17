import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/topup_controller.dart';
import 'package:kiri/app/presentation/partials/topup/card_payment.dart';
import 'package:kiri/app/presentation/partials/topup/topup_nominal.dart';
import 'package:kiri/app/presentation/widgets/app_header.dart';
import 'package:kiri/app/presentation/widgets/bullet_list.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

class TopupDetailPage extends GetView<TopupController> {
  const TopupDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: "Top Up Details",
        background: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TopupNominal(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Payment Method",
                    style: body2BTextStyle(),
                  ),
                  SizedBox(height: 16.h),
                  CardPayment(
                    icon: "assets/icons/gopay.png",
                    name: "GoPay",
                    method: 1,
                  ),
                  SizedBox(height: 16.h),
                  CardPayment(
                    icon: "assets/icons/shopeepay.png",
                    name: "ShopeePay",
                    method: 2,
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.w),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: BulletList(
                      strings: [
                        "Your payment will redirect to payment gateway",
                        "If your payment was successful, it will increase the balance in your account",
                        "If it was unsuccessful, please contact customer support",
                      ],
                      textStyle:
                          body3TextStyle(color: ColorConstants.slate[500]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
