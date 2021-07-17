import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:marzy/features/auth/reset_password/bin/reset_password_binding.dart';
import 'package:marzy/features/auth/reset_password/view/reset_password.dart';
import 'package:marzy/features/auth/reset_password/view/reset_password_code.dart';
import 'package:marzy/features/auth/reset_password/view/reset_password_page.dart';
import 'package:marzy/features/auth/sing_in/bin/sing_in_binding.dart';
import 'package:marzy/features/auth/sing_in/page/sing_in_page.dart';
import 'package:marzy/features/auth/sing_up/bin/sing_up_binding.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_map.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_page.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_page_code.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_page_data.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_page_password.dart';
import 'package:marzy/features/splash/bin/splash_binding.dart';
import 'package:marzy/features/splash/page/splash.dart';

class RouteGenerator {
  static final route = [
    GetPage(
      name: SplashPage.route,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: SingInPage.route,
      page: () => SingInPage(),
      binding: SingInBinding(),
    ),
    GetPage(
      name: ResetPasswordPage.route,
      page: () => ResetPasswordPage(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: ResetPasswordCode.route,
      page: () => ResetPasswordCode(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: ResetPassword.route,
      page: () => ResetPassword(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: SingUpPage.route,
      page: () => SingUpPage(),
      binding: SingUpBinding(),
    ),
    GetPage(
      name: SingUpPageCode.route,
      page: () => SingUpPageCode(),
      binding: SingUpBinding(),
    ),
    GetPage(
      name: SingUpPagePassword.route,
      page: () => SingUpPagePassword(),
      binding: SingUpBinding(),
    ),
    GetPage(
      name: SingUpPageData.route,
      page: () => SingUpPageData(),
      binding: SingUpBinding(),
    ),
    GetPage(
      name: SingUpMap.route,
      page: () => SingUpMap(),
      binding: SingUpBinding(),
    ),
  ];
}
