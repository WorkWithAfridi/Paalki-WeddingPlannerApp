import 'package:get/get.dart';
import 'package:paalki/app/modules/home/controllers/homeModuleController.dart';

class HomeMobuleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeModuleController>(
      () => HomeModuleController(),
    );
  }
}
