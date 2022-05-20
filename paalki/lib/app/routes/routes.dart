import 'package:get/get.dart';
import 'package:paalki/app/modules/authentication/binding/authenticationModuleBinding.dart';
import 'package:paalki/app/modules/authentication/views/loginScreen.dart';
import 'package:paalki/app/modules/authentication/views/otpScreen.dart';
import 'package:paalki/app/modules/authentication/views/signupScreen.dart';
import 'package:paalki/app/modules/introduction/views/onBoardingScreen.dart';
import 'package:paalki/app/modules/introduction/views/splashScreen.dart';

import '../modules/introduction/binding/introductionModuleBinding.dart';

class ROUTES {
  static get getSplashScreenRoute => '/introduction/splashscreen';
  static get getOnboardingScreenRoute => '/introduction/onboardingscreen';
  static get getLoginScreenRoute => '/authentication/loginscreen';
  static get getSignupScreenRoute => '/authentication/signupscreen';
  static get getOtpScreenRoute => '/authentication/otpscreen';
  static List<GetPage> routes = [
    GetPage(
        name: getSplashScreenRoute,
        page: () => SplashScreen(),
        binding: IntroductionModuleBinding()),
    GetPage(
      name: getOnboardingScreenRoute,
      page: () => OnBoardingScreen(),
      binding: IntroductionModuleBinding(),
    ),
    GetPage(
      name: getLoginScreenRoute,
      page: () => LoginScreen(),
      binding: AuthenticationModuleBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: getSignupScreenRoute,
      page: () => SignupScreen(),
      binding: AuthenticationModuleBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: getOtpScreenRoute,
      page: () => OtpVerificationScreen(),
      binding: AuthenticationModuleBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}