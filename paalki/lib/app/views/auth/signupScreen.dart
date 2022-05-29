import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paalki/app/widgets/customCircularProgressLoadingIndicator.dart';

import '../../data/constants.dart';
import '../../widgets/customAppBar.dart';
import '../../widgets/customBackButton.dart';
import '../../widgets/customTextField.dart';
import '../../controllers/authenticationModuleController.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  var controller = Get.find<AuthenticationModuleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "New user?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w800,
            // fontFamily: "GrapeNuts",
          ),
        ),
        leading: CustomBackButton(),
      ),
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
                    Text("Create an account", style: defaultBOLDTextStyle),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Please fill up the following form to create a new account.",
                      style: TextStyle(
                        color: greyColor,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Full Name", style: defaultBOLDTextStyle),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      textEditingController:
                          controller.signupUsernameTextEditingController,
                      hintText: "Enter your name",
                      textInputType: TextInputType.text,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Phone", style: defaultBOLDTextStyle),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      textEditingController:
                          controller.signupPhoneTextEditingController,
                      hintText: "Enter your phone number",
                      textInputType: TextInputType.number,
                      maxLines: 1,
                    ),
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
                          controller.signupEmailTextEditingController,
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
                          controller.signupPasswordTextEditingController,
                      hintText: "Enter password",
                      textInputType: TextInputType.text,
                      maxLines: 1,
                      isPass: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: controller.onSignupButtonClick,
                      child: Obx(
                        () {
                          return Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            alignment: Alignment.center,
                            child: controller
                                    .showSignupButtonLoadingAnimation.value
                                ? const CustomCircularProgressLoadingIndicator()
                                : Text(
                                    "Signup",
                                    style: defaultBOLDTextStyle.copyWith(
                                      color: whiteColor,
                                    ),
                                  ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Or signup using",
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
                                border: Border.all(
                                    color: greyColor, width: 1.5)),
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
                    const SizedBox(
                      height: 25,
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
                Text("Already have an account?",
                    style: defaultNORMALTextStyle.copyWith(color: greyColor)),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: controller.moveToLoginScreen,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Text(
                    "Login",
                    style: defaultBOLDTextStyle.copyWith(color: primaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
