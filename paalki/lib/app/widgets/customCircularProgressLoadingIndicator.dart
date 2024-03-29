import 'package:flutter/material.dart';

import '../data/constants.dart';

class CustomCircularProgressLoadingIndicator extends StatelessWidget {
  const CustomCircularProgressLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          color: whiteColor,
        ),
      ),
    );
  }
}
