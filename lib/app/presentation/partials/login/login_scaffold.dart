import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/controller/login_controller.dart';
import 'package:kiri/app/presentation/widgets/scrollable_constraints.dart';

class LoginScaffold extends StatelessWidget {
  LoginController controller = LoginController.i;

  final Widget child;
  LoginScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollableConstraints(
          child: Form(
            key: controller.formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
