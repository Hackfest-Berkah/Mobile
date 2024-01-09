import 'package:get/get.dart';
import 'package:kiri/app/bindings/auth_bindings.dart';
import 'package:kiri/app/bindings/home_bindings.dart';
import 'package:kiri/app/bindings/onboard_bindings.dart';
import 'package:kiri/app/bindings/profile_bindings.dart';
import 'package:kiri/app/bindings/qr_bindings.dart';
import 'package:kiri/app/presentation/view/edit_profile_page.dart';
import 'package:kiri/app/presentation/view/home_page.dart';
import 'package:kiri/app/presentation/view/login_page.dart';
import 'package:kiri/app/presentation/view/offers_page.dart';
import 'package:kiri/app/presentation/view/onboard_page.dart';
import 'package:kiri/app/presentation/view/profile_page.dart';
import 'package:kiri/app/presentation/view/qr_page.dart';
import 'package:kiri/app/presentation/view/register_page.dart';
import 'package:kiri/app/presentation/view/splash_page.dart';
import 'package:kiri/routes/app_route.dart';

List<GetPage<dynamic>> appPage() {
  return <GetPage<dynamic>>[
    GetPage(
      name: AppRoute.splash,
      page: () => SplashPage(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoute.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoute.onboarding,
      page: () => OnboardPage(),
      binding: OnboardBinding(),
      transition: Transition.fade,
    ),
    GetPage(
      name: AppRoute.login,
      page: () => LoginPage(),
      binding: AuthBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppRoute.register,
      page: () => RegisterPage(),
      binding: AuthBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppRoute.offers,
      page: () => OffersPage(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoute.qr,
      page: () => QrPage(),
      transition: Transition.downToUp,
      binding: QrBinding(),
    ),
    GetPage(
      name: AppRoute.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: AppRoute.editProfile,
      page: () => EditProfilePage(),
      binding: ProfileBinding(),
      transition: Transition.rightToLeft,
    )
  ];
}
