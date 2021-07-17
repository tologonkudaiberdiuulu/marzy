import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/auth/reset_password/view/reset_password_page.dart';
import 'package:marzy/features/splash/page/splash.dart';
import 'package:marzy/shared/images/images.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/presentation/colors.dart';
import 'package:marzy/shared/presentation/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  const CustomButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: Text(
          AppStrings.singUp,
          style: AppTextStyles.interMed14.copyWith(
            color: AppColors.accent,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.accent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

class CustomBackSingInButton extends StatelessWidget {
  const CustomBackSingInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.offAndToNamed(SplashPage.route);
      },
      icon: Container(
        padding: EdgeInsets.all(7.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.fonGrey,
        ),
        child: CustomImage(
          image: AppImages.backButton,
        ),
      ),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Container(
        padding: EdgeInsets.all(7.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.fonGrey,
        ),
        child: CustomImage(
          image: AppImages.backButton,
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(ResetPasswordPage.route);
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 4.h, top: 12),
        child: Text(
          AppStrings.forgotPassword,
          style: AppTextStyles.interMed12.copyWith(
            color: AppColors.accent,
          ),
        ),
      ),
    );
  }
}
