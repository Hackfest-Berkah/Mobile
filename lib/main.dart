import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kiri/app/bindings/global_bindings.dart';
import 'package:kiri/routes/app_page.dart';
import 'package:kiri/routes/app_route.dart';
import 'package:kiri/utils/app_token.dart';
import 'package:kiri/utils/global_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      builder: ((context, child) {
        return GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: FutureBuilder(
            future: UserToken.checkToken(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GetMaterialApp(
                  initialBinding: GlobalBinding(),
                  title: 'Kiri',
                  theme: globalTheme(),
                  getPages: appPage(),
                  initialRoute:
                      snapshot.data ?? false ? AppRoute.home : AppRoute.splash,
                  builder: (context, child) {
                    return MediaQuery(
                      data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                      child: child ?? Container(),
                    );
                  },
                );
              }
              return Container();
            },
          ),
        );
      }),
    );
  }
}
