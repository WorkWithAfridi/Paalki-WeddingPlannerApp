import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paalki/app/data/constants.dart';
import 'package:paalki/app/routes/routes.dart';

class IntroductionModuleController extends GetxController {
  PageController onboardingScreenPageController =
      PageController(initialPage: 0);

  var currentPageIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    triggerSplashScreen();
  }

  void triggerSplashScreen() {
    Future.delayed(const Duration(seconds: 4)).then((_) {
      Get.offNamed(ROUTES.getOnboardingScreenRoute);
    });
  }

  void onLoginClick() {
    Get.offNamed(ROUTES.getLoginScreenRoute);
  }

  void onNextButtonClick() {
    if (currentPageIndex.value < 2) {
      currentPageIndex.value++;
      onboardingScreenPageController.animateToPage(currentPageIndex.value,
          duration: customDuration, curve: Curves.linearToEaseOut);
    }
  }
}
