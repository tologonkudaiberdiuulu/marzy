import 'package:get/get.dart';
import 'package:marzy/features/profile/page/profile.dart';

class HomeController extends GetxController {
  Future<void> goToProfile() async {
    Get.toNamed(ProfilePage.route);
  }
}
