import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:marzy/features/auth/sing_up/contoller/sing_up_contoller.dart';

class SingUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingUpController>(() => SingUpController());
  }
}
