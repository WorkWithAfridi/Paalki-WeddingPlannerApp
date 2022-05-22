import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/constants.dart';

class CategoryIconDesignLayout extends StatelessWidget {
  final IconData icon;
  final String title;
  bool showBiggerTile;
  CategoryIconDesignLayout({
    Key? key,
    required this.icon,
    required this.title,
    this.showBiggerTile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: customElevation,
          shadowColor: greyColor.withOpacity(.3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Container(
            height: showBiggerTile ? Get.width / 3.7 : Get.width / 6,
            width: showBiggerTile ? Get.width / 3.7 : Get.width / 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              // border: Border.all(color: greyColor.withOpacity(.6)),
            ),
            child: Icon(
              icon,
              size: 20,
              color: primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          title,
          style:
              defaultNORMALTextStyle.copyWith(color: greyColor, fontSize: 13),
        )
      ],
    );
  }
}
