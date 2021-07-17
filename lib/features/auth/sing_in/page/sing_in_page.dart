import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/auth/sing_in/controller/sing_in_controller.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/widgets/custom_text_fiedl.dart';
import 'package:marzy/shared/widgets/loaders.dart';

class SingInPage extends GetView<SingInController> {
  static const route = '/sing_in';
  SingInPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.login),
        automaticallyImplyLeading: false,
        leading: CustomBackSingInButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Form(
          key: formKey,
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
              SizedBox(height: 16.h),
              PasswordTextField(
                title: AppStrings.password,
                obscureText: true,
                validator: (value) {
                  return controller.passwordError.value;
                },
                controller: controller.passwordController,
              ),
              SizedBox(height: 32.h),
              Obx(
                () => ElevatedButton(
                  onPressed:
                      controller.submitting.isFalse ? controller.submit : null,
                  child: controller.submitting.isFalse
                      ? Text(AppStrings.singIn)
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
