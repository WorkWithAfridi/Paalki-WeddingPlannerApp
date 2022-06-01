import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paalki/app/views/myOrdersScreen.dart';

import '../data/constants.dart';
import '../widgets/customBackButton.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: defaultBOLDTextStyle.copyWith(color: whiteColor),
        ),
        backgroundColor: primaryColor,
        centerTitle: true,
        leading: CustomBackButton(),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: Get.height * .3,
                width: Get.width,
                color: primaryColor,
              ),
              Container(
                width: Get.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .15,
                      width: Get.width,
                    ),
                    Container(
                      height: Get.height * .18 - 60,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        color: whiteColor,
                      ),
                    ),
                    Container(
                      width: Get.width,
                      color: whiteColor,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Khondakar Afridi',
                                  style: defaultBOLDTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  FontAwesomeIcons.user,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Account',
                                  style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey.withOpacity(.6),
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Edit profile',
                                  style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => MyOrdersScreen());
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'My order',
                                    style: defaultNORMALTextStyle.copyWith(
                                        fontSize: 16),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Language',
                                  style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  FontAwesomeIcons.plus,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'More',
                                  style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey.withOpacity(.6),
                              thickness: 1,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Refund policy',
                                  style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Terms of conditions',
                                  style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Help',
                                  style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'FAQ',
                                  style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  FontAwesomeIcons.arrowRightFromBracket,
                                  size: 14,
                                  color: primaryColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Logout',
                                  style: defaultBOLDTextStyle.copyWith(
                                    fontSize: 16,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: Get.height * .045,
                child: Container(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: Get.height * .2,
                        width: Get.height * .2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Get.height * .2),
                          color: whiteColor,
                        ),
                        padding: EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: Get.height * .18,
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1633332755192-727a05c4013d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
