import 'package:flutter/material.dart';

import '../data/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final int maxLines;

  const CustomTextField(
      {Key? key,
      required this.textEditingController,
      this.isPass = false,
      required this.hintText,
      required this.textInputType,
      required this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(
        context,
        color: greyColor,
        width: 1,
      ),
    );
    return TextField(
      style: defaultNORMALTextStyle,
      cursorColor: primaryColor,
      controller: textEditingController,
      maxLines: maxLines,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: defaultNORMALTextStyle.copyWith(color: greyColor),
        border: inputBorder,
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(
            context,
            color: primaryColor,
            width: 1.5,
          ),
        ),
        enabledBorder: inputBorder,
        fillColor: Colors.white10,
        filled: true,
        contentPadding: const EdgeInsets.only(left: 10, right: 10),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
