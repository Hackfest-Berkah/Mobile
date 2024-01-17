import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/presentation/partials/history/history_header.dart';
import 'package:kiri/app/presentation/widgets/app_bottombar.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/styles/color_constants.dart';

class HistoryScaffold extends StatelessWidget {
  final Widget child;
  const HistoryScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: ColorConstants.slate[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HistoryHeader(),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.all(16.w),
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AppBottomBar(route: AppRoute.history),
    );
  }
}
