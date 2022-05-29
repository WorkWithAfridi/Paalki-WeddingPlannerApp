import 'package:get/get.dart';
import 'package:paalki/app/controllers/introductionModuleController.dart';

class IntroductionModuleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionModuleController>(
          () => IntroductionModuleController(),
    );
  }
}
