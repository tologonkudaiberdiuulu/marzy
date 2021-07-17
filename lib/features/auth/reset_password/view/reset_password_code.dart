import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/auth/reset_password/contoller/reset_password_contoller.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/presentation/colors.dart';
import 'package:marzy/shared/presentation/text_styles.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/widgets/loaders.dart';

import 'counter_widget.dart';

class ResetPasswordCode extends GetView<ResetPasswordController> {
  static const route = '/reset_password_code';
  ResetPasswordCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.restorePassword),
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        actions: [
          CounterWidget(title: '2/3'),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: controller.formKeyCode,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: AppStrings.reset1,
                  style: AppTextStyles.interMed12,
                  children: [
                    TextSpan(
                      text: controller.login,
                      style: AppTextStyles.interMed12.copyWith(
                        color: AppColors.accent,
                      ),
                    ),
                    TextSpan(
                      text: AppStrings.reset2,
                      style: AppTextStyles.interMed12,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                controller: controller.codeController,
                validator: (value) {
                  return controller.codeError.value;
                },
                obscureText: false,
              ),
              SizedBox(height: 100.h),
              Obx(
                () => ElevatedButton(
                  onPressed: controller.submittingCode.isFalse
                      ? controller.submitCode
                      : null,
                  child: controller.submittingCode.isFalse
                      ? Text(AppStrings.continue2)
                      : CircularLoader(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
