import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paalki/app/routes/routes.dart';
import 'package:paalki/app/views/auth/otpScreen.dart';
import 'package:paalki/app/views/auth/signupScreen.dart';

class AuthenticationModuleController extends GetxController {
  var rememberUserCredentials = false.obs;
  var showSignupButtonLoadingAnimation = false.obs;
  var showLoginButtonLoadingAnimation = false.obs;
  var showOTPContinueButtonLoadingAnimation = false.obs;

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
    Get.to(() => OtpVerificationScreen());
    showSignupButtonLoadingAnimation.value = false;
  }

  void moveToLoginScreen() {
    Get.back();
  }

  void moveToSignupScreen() {
    Get.to(() => SignupScreen());
  }

  void onOTPContinueButtonClick() async {
    showOTPContinueButtonLoadingAnimation.value = true;
    await Future.delayed(Duration(seconds: 2));
    Get.offAllNamed(ROUTES.getHomeScreenRoute);
    showOTPContinueButtonLoadingAnimation.value = false;
  }

  void onLoginButtonClick() async {
    showLoginButtonLoadingAnimation.value = true;
    await Future.delayed(Duration(seconds: 2));
    Get.offAllNamed(ROUTES.getHomeScreenRoute);
    showLoginButtonLoadingAnimation.value = false;
  }
}
