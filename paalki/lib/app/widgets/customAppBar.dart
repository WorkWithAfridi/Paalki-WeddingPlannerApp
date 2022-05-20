import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../data/constants.dart';

AppBar CustomAppBar() {
  return AppBar(
    centerTitle: true,
    title: Row(
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
          style: appNameTextStyle,
        )
      ],
    ),
  );
}
