import 'package:get/get.dart';
import 'package:paalki/app/controllers/bindings/authenticationModuleBinding.dart';
import 'package:paalki/app/views/auth/loginScreen.dart';
import 'package:paalki/app/views/auth/otpScreen.dart';
import 'package:paalki/app/views/auth/signupScreen.dart';
import 'package:paalki/app/controllers/bindings/homeModuleBinding.dart';
import 'package:paalki/app/controllers/homeModuleController.dart';
import 'package:paalki/app/views/homeScreen.dart';
import 'package:paalki/app/views/onboarding/onBoardingScreen.dart';
import 'package:paalki/app/views/onboarding/splashScreen.dart';

import '../controllers/bindings/introductionModuleBinding.dart';

class ROUTES {
  static get getSplashScreenRoute => '/views/onboarding/splashscreen';
  static get getOnboardingScreenRoute => '/views/onboarding/onboardingscreen';
  static get getLoginScreenRoute => '/views/auth/loginscreen';
  static get getHomeScreenRoute => '/home/homescreen';
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
    ),
    GetPage(
      name: getHomeScreenRoute,
      page: () => Mainframe(),
      binding: HomeMobuleBinding(),
    ),
  ];
}
