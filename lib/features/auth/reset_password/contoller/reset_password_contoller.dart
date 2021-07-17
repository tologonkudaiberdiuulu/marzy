import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:marzy/features/auth/reset_password/view/reset_password.dart';
import 'package:marzy/features/auth/reset_password/view/reset_password_code.dart';
import 'package:marzy/features/auth/sing_in/page/sing_in_page.dart';

class ResetPasswordController extends GetxController {
  late TextEditingController loginController;
  late TextEditingController passwordController;
  late TextEditingController passwordRepeatController;
  late TextEditingController codeController;
  late GlobalKey<FormState> formKeyLogin;
  late GlobalKey<FormState> formKeyCode;
  late GlobalKey<FormState> formKeyPassword;
  var loginError = RxnString();
  var passwordError = RxnString();
  var passwordRepeatError = RxnString();
  var codeError = RxnString();
  var submittingLogin = false.obs;
  var submittingCode = false.obs;
  var submittingPassword = false.obs;
  late String login;

  @override
  void onInit() {
    super.onInit();

    loginController = TextEditingController();
    passwordController = TextEditingController();
    passwordRepeatController = TextEditingController();
    codeController = TextEditingController();
    formKeyLogin = GlobalKey<FormState>();
    formKeyCode = GlobalKey<FormState>();
    formKeyPassword = GlobalKey<FormState>();
    login = '';
  }

  Future<void> submitLogin() async {
    loginError.value = null;
    if (!formKeyLogin.currentState!.validate()) return;

    submittingLogin.value = true;
    await Future.delayed(Duration(seconds: 1));
    if (loginController.text.length == 0) {
      loginError.value = 'Ошибка';
    } else {
      submittingLogin.value = false;
      login = loginController.text;
      Get.toNamed(ResetPasswordCode.route);
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
    Get.toNamed(ResetPassword.route);
  }

  Future<void> submitPassword() async {
    passwordError.value = 'dsad';
    passwordRepeatError.value = 'dsad';
    formKeyPassword.currentState!.validate();
    Get.offNamedUntil(SingInPage.route, (route) => false);
  }
}
