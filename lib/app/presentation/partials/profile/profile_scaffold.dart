import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/app/presentation/partials/profile/profile_header.dart';
import 'package:kiri/app/presentation/widgets/app_bottombar.dart';
import 'package:kiri/routes/app_route.dart';

class ProfileScaffold extends StatelessWidget {
  final Widget child;
  const ProfileScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: child,
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomBar(route: AppRoute.profile),
    );
  }
}
