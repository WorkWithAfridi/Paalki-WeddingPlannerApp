import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:paalki/app/modules/home/controllers/homeModuleController.dart';
import 'package:paalki/app/modules/home/views/pages/homePage.dart';

import '../../../data/constants.dart';

class Mainframe extends StatefulWidget {
  const Mainframe({Key? key}) : super(key: key);

  @override
  State<Mainframe> createState() => _MainframeState();
}

class _MainframeState extends State<Mainframe> {
  final controller = Get.find<HomeModuleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Dhaka',
                style: defaultNORMALTextStyle.copyWith(
                  color: greyColor,
                ),
              ),
              Icon(
                FontAwesomeIcons.caretDown,
                color: greyColor,
                size: 15,
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: controller.mainframePageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.blue,
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.pink,
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          elevation: customElevation,
          onTap: (value) {
            controller.mainframePageIndex.value = value;
            controller.mainframePageController.animateToPage(
              value,
              duration: customDuration,
              curve: Curves.linearToEaseOut,
            );
          },
          currentIndex: controller.mainframePageIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: controller.mainframePageIndex == 0
                    ? primaryColor
                    : greyColor,
                size: 26,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.heart,
                color: controller.mainframePageIndex == 1
                    ? primaryColor
                    : greyColor,
                size: 20,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bell,
                color: controller.mainframePageIndex == 2
                    ? primaryColor
                    : greyColor,
                size: 20,
              ),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.user,
                color: controller.mainframePageIndex == 3
                    ? primaryColor
                    : greyColor,
                size: 20,
              ),
              label: "Profile",
            ),
          ],
        );
      }),
    );
  }
}
