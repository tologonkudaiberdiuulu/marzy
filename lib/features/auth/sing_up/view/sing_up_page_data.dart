import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/auth/reset_password/view/counter_widget.dart';
import 'package:marzy/features/auth/sing_up/contoller/sing_up_contoller.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';
import 'package:marzy/shared/widgets/custom_text_fiedl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/widgets/loaders.dart';

class SingUpPageData extends GetView<SingUpController> {
  static const route = '/sing_up_page_data';
  const SingUpPageData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.register),
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
        actions: [
          CounterWidget(
            title: '4/4',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: controller.formKeyData,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                title: AppStrings.sureName,
                controller: controller.sureNameController,
                validator: (value) {
                  return null;
                },
                obscureText: false,
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                title: AppStrings.name,
                controller: controller.nameController,
                validator: (value) {
                  return null;
                },
                obscureText: false,
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                title: AppStrings.dateOfBirth,
                controller: controller.dateController,
                validator: (value) {
                  return null;
                },
                obscureText: false,
              ),
              SizedBox(height: 100.h),
              Obx(
                () => ElevatedButton(
                  onPressed: controller.submittingData.isFalse
                      ? controller.submitData
                      : null,
                  child: controller.submittingData.isFalse
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
