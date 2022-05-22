import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../data/constants.dart';
import '../../../widgets/customAppBar.dart';
import '../controllers/introductionModuleController.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var controller = Get.find<IntroductionModuleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height / 2,
              child: PageView(
                physics: BouncingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    controller.currentPageIndex.value = value;
                  });
                },
                controller: controller.onboardingScreenPageController,
                children: [
                  Container(
                    padding: EdgeInsets.all(45),
                    height: double.infinity,
                    width: double.infinity,
                    child: Lottie.asset(
                      'assets/lottieAnimations/cookOneLottieAnimation.json',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(45),
                    height: double.infinity,
                    width: double.infinity,
                    child: Lottie.asset(
                      'assets/lottieAnimations/weddingDecorationLottieAnimation.json',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(45),
                    height: double.infinity,
                    width: double.infinity,
                    child: Lottie.asset(
                      'assets/lottieAnimations/deliveryPersonLottieAnimation.json',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      controller.currentPageIndex.value == 0
                          ? "Hire Chef Easily"
                          : controller.currentPageIndex.value == 1
                              ? "Wedding Decoration"
                              : controller.currentPageIndex.value == 2
                                  ? "Order Dress Online"
                                  : "Hello",
                      style: defaultBOLDTextStyle),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 50,
                    child: Text(
                      controller.currentPageIndex.value == 0
                          ? " Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis."
                          : controller.currentPageIndex.value == 1
                              ? "Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis."
                              : controller.currentPageIndex.value == 2
                                  ? "Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat."
                                  : "Hello",
                      style: defaultNORMALTextStyle.copyWith(
                          fontSize: 13, color: greyColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        height: 10,
                        width:
                            controller.currentPageIndex.value == 0 ? 15 : 10,
                        decoration: BoxDecoration(
                          color: controller.currentPageIndex.value == 0
                              ? primaryColor
                              : greyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        duration: customDuration,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      AnimatedContainer(
                        height: 10,
                        width:
                            controller.currentPageIndex.value == 1 ? 15 : 10,
                        decoration: BoxDecoration(
                          color: controller.currentPageIndex.value == 1
                              ? primaryColor
                              : greyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        duration: customDuration,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      AnimatedContainer(
                        height: 10,
                        width:
                            controller.currentPageIndex.value == 2 ? 15 : 10,
                        decoration: BoxDecoration(
                          color: controller.currentPageIndex.value == 2
                              ? primaryColor
                              : greyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        duration: customDuration,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: controller.onNextButtonClick,
                        child: Container(
                          height: 50,
                          width: Get.width / 3,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                              color: controller.currentPageIndex.value == 2
                                  ? Colors.grey
                                  : primaryColor,
                              width: 1.5,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Next",
                            style: defaultBOLDTextStyle.copyWith(
                              color: controller.currentPageIndex.value == 2
                                  ? Colors.grey
                                  : primaryColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: controller.onLoginClick,
                        child: Container(
                          height: 50,
                          width: Get.width / 3,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: defaultBOLDTextStyle.copyWith(
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
