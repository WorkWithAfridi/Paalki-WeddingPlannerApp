import 'package:flutter/material.dart';

import '../data/constants.dart';

class FilterBoxDesignLayout extends StatelessWidget {
  final String title;
  final bool isSelected;
  const FilterBoxDesignLayout(
      {Key? key, required this.title, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: customElevation,
      shadowColor: greyColor.withOpacity(.4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(8),
          // border: Border.all(
          //   // color: primaryColor,
          //   width: 1,
          // ),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: defaultBOLDTextStyle.copyWith(color: primaryColor),
        ),
      ),
    );
  }
}
