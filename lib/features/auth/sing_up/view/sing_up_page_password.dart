import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/shared/widgets/counter_widget.dart';
import 'package:marzy/features/auth/sing_up/contoller/sing_up_contoller.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';
import 'package:marzy/shared/widgets/custom_text_fiedl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/widgets/loaders.dart';

class SingUpPagePassword extends GetView<SingUpController> {
  static const route = '/sing_up_page_password';
  const SingUpPagePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.register),
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        actions: [
          CounterWidget(
            title: '3/4',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: controller.formKeyPassword,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                title: AppStrings.createPassword,
                controller: controller.passwordController,
                validator: (value) {
                  return controller.passwordError.value;
                },
                obscureText: true,
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                title: AppStrings.password,
                controller: controller.passwordRepeatController,
                validator: (value) {
                  return controller.passwordRepeatError.value;
                },
                obscureText: true,
              ),
              SizedBox(height: 100.h),
              Obx(
                () => ElevatedButton(
                  onPressed: controller.submittingPassword.isFalse
                      ? controller.submitPassword
                      : null,
                  child: controller.submittingPassword.isFalse
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
