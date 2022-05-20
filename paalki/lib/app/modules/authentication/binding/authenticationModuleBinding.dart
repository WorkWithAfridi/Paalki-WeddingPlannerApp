import 'package:get/get.dart';
import 'package:paalki/app/modules/authentication/controllers/authenticationModuleController.dart';

class AuthenticationModuleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationModuleController>(
      () => AuthenticationModuleController(),
    );
  }
}
