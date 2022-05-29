import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:paalki/app/controllers/introductionModuleController.dart';

import '../../data/constants.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  var controller = Get.find<IntroductionModuleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottieAnimations/shoppingBagLottieAnimation.json',
              height: 60,
              width: 50,
              fit: BoxFit.fitHeight,
              repeat: false,
            ),
            Text(
              appName,
              style: appNameTextStyle
            ),
          ],
        ),
      ),
    );
  }
}
