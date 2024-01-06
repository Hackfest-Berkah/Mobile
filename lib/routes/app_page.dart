import 'package:get/get.dart';
import 'package:kiri/app/bindings/home_bindings.dart';
import 'package:kiri/app/presentation/view/home_page.dart';
import 'package:kiri/app/presentation/view/splash_page.dart';
import 'package:kiri/routes/app_route.dart';

List<GetPage<dynamic>> appPage() {
  return <GetPage<dynamic>>[
    GetPage(
      name: AppRoute.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoute.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
