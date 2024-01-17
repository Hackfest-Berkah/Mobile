import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/controller/history_controller.dart';
import 'package:kiri/app/presentation/partials/history/card_history.dart';
import 'package:kiri/app/presentation/partials/history/history_none.dart';
import 'package:kiri/app/presentation/partials/history/history_scaffold.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => HistoryScaffold(
          child: controller.data.isNotEmpty
              ? Column(children: [
                  ...controller.data
                      .map((data) => CardHistory(data: data))
                      .toList(),
                  SizedBox(height: 100.h),
                ])
              : HistoryNone(),
        ));
  }
}
