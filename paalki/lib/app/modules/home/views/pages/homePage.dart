import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:paalki/app/data/constants.dart';
import 'package:paalki/app/modules/home/views/pages/categoriesPage.dart';
import 'package:paalki/app/modules/home/views/pages/filtersPage.dart';
import 'package:paalki/app/widgets/categoryIconDesignLayout.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: Get.width / 6 + 20,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Card(
                        elevation: customElevation,
                        shadowColor: greyColor.withOpacity(.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: Get.width / 6,
                          width: Get.width / 6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey.withOpacity(.1),
                            border: Border.all(color: greyColor),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1633332755192-727a05c4013d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Afridi",
                            style: defaultNORMALTextStyle.copyWith(
                              color: greyColor,
                            ),
                          ),
                          Text(
                            "Welcome back!",
                            style: defaultBOLDTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Dhaka',
                                style: defaultNORMALTextStyle.copyWith(
                                  color: greyColor,
                                ),
                              ),
                              Icon(
                                FontAwesomeIcons.caretDown,
                                color: greyColor,
                                size: 15,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.bagShopping,
                      size: 20,
                    ),
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: Get.width / 7,
              child: Row(
                children: [
                  Flexible(
                    flex: 9,
                    child: Card(
                      elevation: customElevation,
                      shadowColor: greyColor.withOpacity(.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // color: Colors.grey.withOpacity(.05),
                          // border: Border.all(color: greyColor),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              FontAwesomeIcons.magnifyingGlass,
                              color: Colors.grey,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Search",
                              style: defaultNORMALTextStyle.copyWith(
                                color: greyColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => FiltersPage());
                      },
                      child: Card(
                        elevation: customElevation,
                        shadowColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            FontAwesomeIcons.sliders,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Categories',
                    style: defaultBOLDTextStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => CategoriesPage());
                    },
                    child: Text(
                      'See all',
                      style: defaultNORMALTextStyle.copyWith(color: greyColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: Get.width / 6 + 30,
              width: Get.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CategoryIconDesignLayout(
                    icon: FontAwesomeIcons.gift,
                    title: "Packages",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CategoryIconDesignLayout(
                    icon: FontAwesomeIcons.angellist,
                    title: "Decoration",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CategoryIconDesignLayout(
                    icon: FontAwesomeIcons.angellist,
                    title: "Venue",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CategoryIconDesignLayout(
                    icon: FontAwesomeIcons.angellist,
                    title: "Rent Car",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CategoryIconDesignLayout(
                    icon: FontAwesomeIcons.angellist,
                    title: "Parlour",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CategoryIconDesignLayout(
                    icon: FontAwesomeIcons.angellist,
                    title: "Chef",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CategoryIconDesignLayout(
                    icon: FontAwesomeIcons.angellist,
                    title: "Photographer",
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CategoryIconDesignLayout(
                    icon: FontAwesomeIcons.angellist,
                    title: "Shopping",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Venues for you',
                    style: defaultBOLDTextStyle,
                  ),
                  Text(
                    'See all',
                    style: defaultNORMALTextStyle.copyWith(color: greyColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 210,
              width: Get.width,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 13,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Card(
                              elevation: customElevation,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              shadowColor: shadowColor,
                              child: Container(
                                height: 200,
                                width: 150,
                                child: Column(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1627490631692-3eb501e21cd1?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Gec Convention',
                                              style: defaultBOLDTextStyle,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.locationDot,
                                                  color: blackColor,
                                                  size: 15,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Text(
                                                  'Gec Convention',
                                                  style: defaultNORMALTextStyle
                                                      .copyWith(
                                                    fontSize: 13,
                                                    color: greyColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                  '4.5',
                                                  style: defaultBOLDTextStyle
                                                      .copyWith(
                                                    fontSize: 12,
                                                    color: primaryColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '৳',
                                                  style: defaultBOLDTextStyle
                                                      .copyWith(fontSize: 12),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '1,45,000',
                                                  style: defaultBOLDTextStyle
                                                      .copyWith(fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
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
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Trending today',
                    style: defaultBOLDTextStyle,
                  ),
                  Text(
                    'See all',
                    style: defaultNORMALTextStyle.copyWith(color: greyColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: customElevation,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadowColor: shadowColor,
                    child: Container(
                      height: 100,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                                child: Image.network(
                                  "http://2.bp.blogspot.com/-S8eZ27sKoQI/VlCXYDbJ0oI/AAAAAAAADog/OJKIk8_43xI/s1600/mutton_briyani.JPG",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            flex: 8,
                            child: Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bashmoti Kacchi',
                                    style: defaultBOLDTextStyle,
                                  ),
                                  Text(
                                    "- The Kacchi Hourse",
                                    style: defaultNORMALTextStyle.copyWith(
                                        color: greyColor),
                                  ),
                                  Text(
                                    "Price: 1500/ 10 plates",
                                    style: defaultNORMALTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 10, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.star,
                                          color: primaryColor,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '4.5',
                                          style: defaultBOLDTextStyle.copyWith(
                                            fontSize: 13,
                                            color: primaryColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '(400)',
                                          style:
                                              defaultNORMALTextStyle.copyWith(
                                            fontSize: 13,
                                            color: greyColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Parlours near you',
                    style: defaultBOLDTextStyle,
                  ),
                  Text(
                    'See all',
                    style: defaultNORMALTextStyle.copyWith(color: greyColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: Card(
                      elevation: customElevation,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadowColor: shadowColor,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1595944024804-733665a112db?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              height: double.maxFinite,
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Simmy's Parlours",
                                    style: defaultBOLDTextStyle,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Open: ",
                                        style: defaultNORMALTextStyle.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        "Sun. - Thur.",
                                        style: defaultBOLDTextStyle.copyWith(
                                          color: primaryColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.locationDot,
                                        color: blackColor,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Gec Convention',
                                        style: defaultNORMALTextStyle.copyWith(
                                          fontSize: 13,
                                          color: greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.count(1, 1),
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Copyright 2022 - Khondakar Afridi',
                  style: defaultNORMALTextStyle.copyWith(
                      color: greyColor.withOpacity(.5), fontSize: 10),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
