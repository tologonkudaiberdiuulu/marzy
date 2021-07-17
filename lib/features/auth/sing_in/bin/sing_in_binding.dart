import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:marzy/features/auth/sing_in/controller/sing_in_controller.dart';

class SingInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingInController>(() => SingInController());
  }
}
