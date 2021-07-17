import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/auth/reset_password/view/counter_widget.dart';
import 'package:marzy/features/auth/sing_up/contoller/sing_up_contoller.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/widgets/custom_text_fiedl.dart';
import 'package:marzy/shared/widgets/loaders.dart';

class SingUpPage extends GetView<SingUpController> {
  static const route = '/sing_up';
  SingUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.register),
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        actions: [
          CounterWidget(
            title: '1/4',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Form(
          key: controller.formKeyLogin,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                title: AppStrings.phoneNumber,
                controller: controller.phoneController,
                validator: (value) {
                  return controller.phoneError.value;
                },
                obscureText: false,
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                title: AppStrings.email,
                obscureText: true,
                validator: (value) {
                  return null;
                },
                controller: controller.emailController,
              ),
              SizedBox(height: 32.h),
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
