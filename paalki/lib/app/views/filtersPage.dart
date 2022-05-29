import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paalki/app/controllers/homeModuleController.dart';
import 'package:paalki/app/widgets/customBackButton.dart';
import 'package:paalki/app/widgets/filterBoxDesignLayout.dart';

import '../data/constants.dart';
import '../widgets/categoryIconDesignLayout.dart';

class FiltersPage extends StatelessWidget {
  FiltersPage({Key? key}) : super(key: key);
  final controller = Get.find<HomeModuleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filter",
          style: defaultBOLDTextStyle,
        ),
        centerTitle: true,
        leading: CustomBackButton(),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Container(
              height: 25,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Service',
                    style: defaultBOLDTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    FilterBoxDesignLayout(title: "Packages", isSelected: false),
                    const SizedBox(
                      width: 5,
                    ),
                    FilterBoxDesignLayout(
                        title: "Decoration", isSelected: false),
                    const SizedBox(
                      width: 5,
                    ),
                    FilterBoxDesignLayout(title: "Venue", isSelected: false),
                    const SizedBox(
                      width: 5,
                    ),
                    FilterBoxDesignLayout(title: "Rent Car", isSelected: false),
                    const SizedBox(
                      width: 5,
                    ),
                    FilterBoxDesignLayout(title: "Parlor", isSelected: false),
                    const SizedBox(
                      width: 5,
                    ),
                    FilterBoxDesignLayout(title: "Chef", isSelected: false),
                    const SizedBox(
                      width: 5,
                    ),
                    FilterBoxDesignLayout(
                        title: "Photographer", isSelected: false),
                    const SizedBox(
                      width: 5,
                    ),
                    FilterBoxDesignLayout(title: "Shopping", isSelected: false),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 25,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Price Range',
                    style: defaultBOLDTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Obx(() {
                return Slider(
                  value: controller.filterPriceSlider.value,
                  min: 0,
                  max: 100000,
                  divisions: 100,
                  inactiveColor: greyColor,
                  activeColor: primaryColor,
                  onChanged: (value) {
                    controller.filterPriceSlider.value = value;
                  },
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: greyColor,
                        width: 1.5,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "৳ ${100} ",
                      style: defaultNORMALTextStyle.copyWith(
                          color: greyColor, fontSize: 12),
                    ),
                  ),
                  Obx(() {
                    return Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          color: greyColor,
                          width: 1.5,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "৳ ${controller.filterPriceSlider.value.toInt().toString()} ",
                        style: defaultNORMALTextStyle.copyWith(
                            color: greyColor, fontSize: 12),
                      ),
                    );
                  })
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 25,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Rating',
                    style: defaultBOLDTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: customElevation,
                    shadowColor: greyColor.withOpacity(.3),
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.star,
                            color: primaryColor,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '5',
                            style: defaultBOLDTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: customElevation,
                    shadowColor: greyColor.withOpacity(.3),
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.star,
                            color: primaryColor,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4',
                            style: defaultBOLDTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: customElevation,
                    shadowColor: greyColor.withOpacity(.3),
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.star,
                            color: primaryColor,
                            size: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '3',
                            style: defaultBOLDTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: primaryColor,
                            width: 1.5,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Reset filters",
                          style: defaultBOLDTextStyle.copyWith(
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: primaryColor,
                            width: 1.5,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Apply filters",
                          style: defaultBOLDTextStyle.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
