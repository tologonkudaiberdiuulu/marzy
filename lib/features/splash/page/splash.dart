import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/auth/sing_in/page/sing_in_page.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_page.dart';
import 'package:marzy/features/splash/controller/splash_controller.dart';
import 'package:marzy/shared/images/images.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/presentation/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';

class SplashPage extends GetView<SplashController> {
  static const String route = '/';

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.splashBg),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppStrings.appName,
                    style: AppTextStyles.interSemiBold64,
                  ),
                  SizedBox(height: 30.h),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(SingInPage.route);
                    },
                    child: Text(AppStrings.singIn),
                  ),
                  SizedBox(height: 11.h),
                  CustomButton(onTap: () {
                    Get.toNamed(SingUpPage.route);
                  }),
                  SizedBox(height: 11.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
