import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kiri/app/controller/global_controller.dart';
import 'package:kiri/app/presentation/widgets/app_loading.dart';
import 'package:kiri/app/repository/topup_repo.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/utils/show_alert.dart';

class TopupController extends GetxController {
  static TopupController get i => Get.find<TopupController>();

  TextEditingController inputController = TextEditingController();
  RxInt nominal = 0.obs;

  void topupNext() {
    Get.toNamed(AppRoute.topupDetail);
  }

  NumberFormat formatter = NumberFormat("#,###");
  void parseNominal(text) {
    if (text.isEmpty) {
      inputController.text = "";
      nominal.value = 0;
    } else {
      int? parsedValue = int.tryParse(text.replaceAll(',', ''));
      if (parsedValue != null) {
        String formattedValue = formatter.format(parsedValue);
        inputController.value = TextEditingValue(
          text: formattedValue,
          selection: TextSelection.collapsed(offset: formattedValue.length),
        );
        nominal.value = parsedValue;
      }
    }
  }

  RxBool isLoading = true.obs;
  void topup(int method) async {
    // Get.offnamed

    showLoadingDialog(Get.context!, isLoading);
    TopupRepo.topup(method, nominal.value).then((e) async {
      await Future.delayed(Duration(milliseconds: 50), () async {
        isLoading.value = false;
        await Future.delayed(Duration(milliseconds: 50), () {
          isLoading.value = true;
        });
      });
      showAlert("Success Top Up", isSuccess: true);
      GlobalController.i.getUserData();
      Get.back();
      Get.back();
    }).catchError((_) {});
  }
}
