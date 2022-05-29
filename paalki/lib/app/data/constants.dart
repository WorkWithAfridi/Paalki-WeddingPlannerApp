import 'package:flutter/material.dart';

final primaryColor = Color(0xffFF3956);
final blackColor = Color(0xff191919);
final greyColor = Color(0xff999999);
final lightGreyColor = Color(0xffD9D9D9);
final whiteColor = Color(0xffFCFCFC);
final shadowColor = greyColor.withOpacity(.3);

String appName = "PaalKi";

Duration customDuration = Duration(milliseconds: 400);
double customElevation = 4;

TextStyle defaultBOLDTextStyle = const TextStyle(
  color: Colors.black,
  fontSize: 14,
  fontWeight: FontWeight.w800,
  // fontFamily: "GrapeNuts",
);

TextStyle defaultNORMALTextStyle = TextStyle(
  color: Colors.black.withOpacity(.8),
  fontSize: 14,
  fontWeight: FontWeight.normal,
  // fontFamily: "GrapeNuts",
);

TextStyle appNameTextStyle = const TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontWeight: FontWeight.w800,
  fontFamily: "GrapeNuts",
);
