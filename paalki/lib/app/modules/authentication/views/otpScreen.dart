import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/constants.dart';
import '../../../widgets/customBackButton.dart';
import '../../../widgets/customTextField.dart';
import '../controllers/authenticationModuleController.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({Key? key}) : super(key: key);
  var controller = Get.find<AuthenticationModuleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Phone Verification", style: defaultBOLDTextStyle),
        leading: CustomBackButton(),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text("OTP Verification", style: defaultBOLDTextStyle),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Enter the OTP sent to",
                      style: defaultNORMALTextStyle.copyWith(color: greyColor)),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("+880 1741499768",
                      style:
                          defaultBOLDTextStyle.copyWith(color: primaryColor)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  textEditingController:
                      controller.otpVerificationCodeTextEditingController,
                  hintText: "OTP Code",
                  textInputType: TextInputType.number,
                  maxLines: 1),
              const SizedBox(
                height: 10,
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
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w700,
                    ),
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
