import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../data/constants.dart';

CustomBackButton() {
  return IconButton(
    onPressed: () {
      Get.back();
    },
    icon: Icon(
      FontAwesomeIcons.arrowLeft,
      size: 15,
      color: blackColor,
    ),
  );
}
