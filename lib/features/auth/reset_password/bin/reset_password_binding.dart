import 'package:get/get.dart';
import 'package:marzy/features/auth/reset_password/contoller/reset_password_contoller.dart';

class ResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetPasswordController>(() => ResetPasswordController());
  }
}
