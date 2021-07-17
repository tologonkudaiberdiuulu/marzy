import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_map.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_page_code.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_page_data.dart';
import 'package:marzy/features/auth/sing_up/view/sing_up_page_password.dart';

class SingUpController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController passwordRepeatController;
  late TextEditingController codeController;
  late TextEditingController sureNameController;
  late TextEditingController nameController;
  late TextEditingController dateController;

  late GlobalKey<FormState> formKeyLogin;
  late GlobalKey<FormState> formKeyCode;
  late GlobalKey<FormState> formKeyPassword;
  late GlobalKey<FormState> formKeyData;

  var phoneError = RxnString();
  var passwordError = RxnString();
  var passwordRepeatError = RxnString();
  var codeError = RxnString();

  var submittingLogin = false.obs;
  var submittingCode = false.obs;
  var submittingPassword = false.obs;
  var submittingData = false.obs;

  late String phone;

  @override
  void onInit() {
    super.onInit();

    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    passwordRepeatController = TextEditingController();
    codeController = TextEditingController();
    sureNameController = TextEditingController();
    nameController = TextEditingController();
    dateController = TextEditingController();

    formKeyLogin = GlobalKey<FormState>();
    formKeyCode = GlobalKey<FormState>();
    formKeyPassword = GlobalKey<FormState>();
    formKeyData = GlobalKey<FormState>();

    phone = '';
  }

  Future<void> submitLogin() async {
    phoneError.value = null;
    if (!formKeyLogin.currentState!.validate()) return;

    submittingLogin.value = true;
    await Future.delayed(Duration(seconds: 1));
    if (phoneController.text.length == 0) {
      phoneError.value = 'Ошибка';
    } else {
      submittingLogin.value = false;
      phone = phoneController.text;
      Get.toNamed(SingUpPageCode.route);
    }
    try {
      submittingLogin.value = false;

      formKeyLogin.currentState!.validate();
    } catch (e) {
      print(e);
      formKeyLogin.currentState!.validate();
    } finally {
      submittingLogin.value = false;
    }
  }

  Future<void> submitCode() async {
    codeError.value = 'dsad';
    formKeyCode.currentState!.validate();
    Get.toNamed(SingUpPagePassword.route);
  }

  Future<void> submitPassword() async {
    passwordError.value = 'dsad';
    passwordRepeatError.value = 'dsad';
    formKeyPassword.currentState!.validate();
    Get.toNamed(SingUpPageData.route);
  }

  Future<void> submitData() async {
    passwordError.value = 'dsad';
    passwordRepeatError.value = 'dsad';
    formKeyData.currentState!.validate();
    Get.toNamed(SingUpMap.route);
  }
}
