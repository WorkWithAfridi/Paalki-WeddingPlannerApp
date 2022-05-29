import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:paalki/app/routes/routes.dart';

import 'app/data/constants.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.keepFactory,
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch: Colors.pink,
        fontFamily: "Lato",
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        scaffoldBackgroundColor: whiteColor,
      ),
      title: "Application",
      initialRoute: ROUTES.getSplashScreenRoute,
      getPages: ROUTES.routes,
    ),
  );
}
