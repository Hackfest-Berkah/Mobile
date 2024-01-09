import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/models/common/offer.dart';
import 'package:kiri/app/presentation/partials/offers/card_offer.dart';
import 'package:kiri/app/presentation/widgets/app_header.dart';
import 'package:kiri/extensions/map_indexed.dart';

class OffersPage extends StatelessWidget {
  static List<String> vouchers = [
    "Discount Up to 80% for New User!",
    "Collect KiriPoints, Get Free Ride!",
    "Everywhere You Go, Just Pay Rp1000",
    "Discount Up to 90% Using KiriPay",
  ];

  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: "Offers For You",
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(children: [
            ...vouchers
                .mapIndexed(
                  (i, e) => CardOffer(
                    data: Offer(
                      deadline: "2nd Feb, 2024",
                      title: e,
                      thumbnail: "assets/images/voucher_${i + 1}.png",
                    ),
                  ),
                )
                .toList(),
            SizedBox(height: 20.h),
          ]),
        ),
      ),
    );
  }
}
