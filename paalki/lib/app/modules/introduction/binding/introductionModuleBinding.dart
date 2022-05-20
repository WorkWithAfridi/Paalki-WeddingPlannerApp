import 'package:get/get.dart';
import 'package:paalki/app/modules/introduction/controllers/introductionModuleController.dart';

class IntroductionModuleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IntroductionModuleController>(
          () => IntroductionModuleController(),
    );
  }
}
