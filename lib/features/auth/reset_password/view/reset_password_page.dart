import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/auth/reset_password/contoller/reset_password_contoller.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';
import 'package:marzy/shared/widgets/custom_text_fiedl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/widgets/loaders.dart';

import 'counter_widget.dart';

class ResetPasswordPage extends GetView<ResetPasswordController> {
  static const route = '/reset_password';
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.restorePassword),
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        actions: [
          CounterWidget(title: '1/3'),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: controller.formKeyLogin,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                title: AppStrings.phoneOrEmail,
                controller: controller.loginController,
                validator: (value) {
                  return controller.loginError.value;
                },
                obscureText: false,
              ),
              SizedBox(height: 100.h),
              Obx(
                () => ElevatedButton(
                  onPressed: controller.submittingLogin.isFalse
                      ? controller.submitLogin
                      : null,
                  child: controller.submittingLogin.isFalse
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
