import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/controller/topup_controller.dart';
import 'package:kiri/styles/text_styles.dart';

class CardPayment extends StatelessWidget {
  TopupController controller = TopupController.i;
  final String icon;
  final String name;
  final int method;

  CardPayment({
    super.key,
    required this.icon,
    required this.name,
    required this.method,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.topup(method);
      },
      borderRadius: BorderRadius.circular(10.w),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.w),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 27.h,
          horizontal: 20.w,
        ),
        child: Row(
          children: [
            SizedBox.square(
              dimension: 30.w,
              child: Image.asset(icon),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: Text(
                name,
                style: body1BTextStyle(),
              ),
            ),
            SizedBox(width: 12.w),
            Icon(
              Icons.chevron_right,
              size: 30.w,
            ),
          ],
        ),
      ),
    );
  }
}
