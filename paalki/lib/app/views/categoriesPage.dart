import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paalki/app/widgets/customBackButton.dart';

import '../data/constants.dart';
import '../widgets/categoryIconDesignLayout.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: defaultBOLDTextStyle,
        ),
        centerTitle: true,
        leading: CustomBackButton(),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Wrap(
          // runSpacing: 5,
          // spacing: 5,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.start,
          children: [
            CategoryIconDesignLayout(
              icon: FontAwesomeIcons.gift,
              title: "Packages",
              showBiggerTile: true,
            ),
            CategoryIconDesignLayout(
              icon: FontAwesomeIcons.angellist,
              title: "Decoration",
              showBiggerTile: true,
            ),
            CategoryIconDesignLayout(
              icon: FontAwesomeIcons.angellist,
              title: "Venue",
              showBiggerTile: true,
            ),
            CategoryIconDesignLayout(
              icon: FontAwesomeIcons.angellist,
              title: "Rent Car",
              showBiggerTile: true,
            ),
            CategoryIconDesignLayout(
              icon: FontAwesomeIcons.angellist,
              title: "Parlour",
              showBiggerTile: true,
            ),
            CategoryIconDesignLayout(
              icon: FontAwesomeIcons.angellist,
              title: "Chef",
              showBiggerTile: true,
            ),
            CategoryIconDesignLayout(
              icon: FontAwesomeIcons.angellist,
              title: "Photographer",
              showBiggerTile: true,
            ),
            CategoryIconDesignLayout(
              icon: FontAwesomeIcons.angellist,
              title: "Shopping",
              showBiggerTile: true,
            ),
          ],
        ),
      ),
    );
  }
}
