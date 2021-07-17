import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SingInController extends GetxController {
  late TextEditingController loginController;
  late TextEditingController passwordController;

  var loginError = RxnString();
  var passwordError = RxnString();
  var submitting = false.obs;

  @override
  void onInit() {
    super.onInit();

    loginController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future<void> submit() async {
    loginError.value = null;
    passwordError.value = null;
    // if (!formKey.currentState!.validate()) return;

    submitting.value = true;
    await Future.delayed(Duration(seconds: 2));
    try {
      loginController.clear();
      // Get.toNamed(EnterCodeScreen.route);
      submitting.value = false;
      passwordError.value = 'Ошибка';
      // formKey.currentState!.validate();
    } catch (e) {
      print(e);
      passwordError.value = 'Произошла ошибка, попробуйте снова';
      // formKey.currentState!.validate();
    } finally {
      submitting.value = false;
    }
  }
}
