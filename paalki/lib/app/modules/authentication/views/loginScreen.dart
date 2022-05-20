import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paalki/app/modules/authentication/controllers/authenticationModuleController.dart';

import '../../../data/constants.dart';
import '../../../widgets/customAppBar.dart';
import '../../../widgets/customTextField.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var controller = Get.find<AuthenticationModuleController>();

  getCustomBorder(BuildContext context) {
    return OutlineInputBorder(
        borderSide: Divider.createBorderSide(
          context,
          color: greyColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(7));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text("Login Now", style: defaultBOLDTextStyle),
                    const SizedBox(
                      height: 2,
                    ),
                    Text("Please login to continue using the app.",
                        style:
                            defaultNORMALTextStyle.copyWith(color: greyColor)),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Email", style: defaultBOLDTextStyle),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      textEditingController:
                          controller.loginEmailTextEditingController,
                      hintText: "Enter email address",
                      textInputType: TextInputType.text,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Password", style: defaultBOLDTextStyle),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      textEditingController:
                          controller.loginPasswordTextEditingController,
                      hintText: "Enter password",
                      textInputType: TextInputType.text,
                      maxLines: 1,
                      isPass: true,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() {
                          return SizedBox(
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                  child: Checkbox(
                                    value: controller
                                        .rememberUserCredentials.value,
                                    activeColor: primaryColor,
                                    onChanged: (value) {
                                      controller.rememberUserCredentials.value =
                                          value!;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.rememberUserCredentials.value =
                                        !controller
                                            .rememberUserCredentials.value;
                                  },
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  child: Text(
                                    "Remember me",
                                    style: defaultNORMALTextStyle.copyWith(
                                        color: greyColor),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                        InkWell(
                          child: Text(
                            "Forgot Password?",
                            style: defaultBOLDTextStyle.copyWith(
                                color: primaryColor),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        alignment: Alignment.center,
                        child: Text("Login",
                            style: defaultBOLDTextStyle.copyWith(
                                color: whiteColor)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Or continue using",
                        style:
                            defaultNORMALTextStyle.copyWith(color: greyColor)),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(7),
                                border:
                                    Border.all(color: greyColor, width: 1.5)),
                            alignment: Alignment.center,
                            child: Text("Facebook",
                                style: defaultBOLDTextStyle.copyWith(
                                    color: Colors.blueAccent)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: Get.width / 3,
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(7),
                                border:
                                    Border.all(color: greyColor, width: 1.5)),
                            alignment: Alignment.center,
                            child: Text("Google",
                                style: defaultBOLDTextStyle.copyWith(
                                    color: Colors.redAccent)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: defaultNORMALTextStyle.copyWith(
                    color: greyColor,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: controller.moveToSignupScreen,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text("Signup",
                      style:
                          defaultBOLDTextStyle.copyWith(color: primaryColor)),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
