import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/kiripay_controller.dart';
import 'package:kiri/app/presentation/partials/home/container_offers.dart';
import 'package:kiri/app/presentation/partials/kiripay/kiripay_balance.dart';
import 'package:kiri/app/presentation/partials/kiripay/kiripay_myvoucher.dart';
import 'package:kiri/app/presentation/partials/kiripay/kiripay_scaffold.dart';
import 'package:kiri/app/presentation/partials/kiripay/voucher_store.dart';

class KiripayPage extends GetView<KiripayController> {
  const KiripayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return KiripayScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 8.h),
          KiripayBalance(),
          SizedBox(height: 32.h),
          KiripayMyvoucher(),
          SizedBox(height: 12.h),
          VoucherStore(),
          SizedBox(height: 12.h),
          ContainerOffer(),
          SizedBox(height: 108.h),
        ],
      ),
    );
  }
}
