import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paalki/app/routes/routes.dart';

class AuthenticationModuleController extends GetxController {
  var rememberUserCredentials = false.obs;
  var showSignupButtonLoadingAnimation = false.obs;
  var showLoginButtonLoadingAnimation = false.obs;

  TextEditingController loginEmailTextEditingController =
      TextEditingController();
  TextEditingController loginPasswordTextEditingController =
      TextEditingController();

  TextEditingController signupEmailTextEditingController =
      TextEditingController();
  TextEditingController signupPhoneTextEditingController =
      TextEditingController();
  TextEditingController signupPasswordTextEditingController =
      TextEditingController();
  TextEditingController signupUsernameTextEditingController =
      TextEditingController();

  TextEditingController otpVerificationCodeTextEditingController =
      TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void onSignupButtonClick() async {
    showSignupButtonLoadingAnimation.value = true;
    await Future.delayed(Duration(seconds: 2));
    Get.toNamed(ROUTES.getOtpScreenRoute);
    showSignupButtonLoadingAnimation.value = false;
  }

  void moveToLoginScreen() {
    Get.back();
  }

  void moveToSignupScreen() {
    Get.toNamed(ROUTES.getSignupScreenRoute);
  }
}
