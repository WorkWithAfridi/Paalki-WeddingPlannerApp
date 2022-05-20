import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:paalki/app/data/constants.dart';
import 'package:paalki/app/widgets/categoryIconDesignLayout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          AppBar(
            centerTitle: true,
            title: Row(
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
          ),
          Container(
            height: Get.width / 6 + 20,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
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
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
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
                        SizedBox(
                          height: 20,
                        )
                      ],
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.cartShopping,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: Get.width / 7,
            child: Row(
              children: [
                Flexible(
                  flex: 9,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.withOpacity(.1),
                      border: Border.all(color: greyColor),
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
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  flex: 2,
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
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 25,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: defaultBOLDTextStyle,
                ),
                Text(
                  'See all',
                  style: defaultNORMALTextStyle,
                ),
              ],
            ),
          ),
          Container(
            height: Get.width / 6 + 20,
            width: Get.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: const [
                SizedBox(
                  width: 20,
                ),
                CategoryIconDesignLayout(
                  icon: FontAwesomeIcons.gift,
                  title: "Packages",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryIconDesignLayout(
                  icon: FontAwesomeIcons.angellist,
                  title: "Decoration",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryIconDesignLayout(
                  icon: FontAwesomeIcons.angellist,
                  title: "Venue",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryIconDesignLayout(
                  icon: FontAwesomeIcons.angellist,
                  title: "Rent Car",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryIconDesignLayout(
                  icon: FontAwesomeIcons.angellist,
                  title: "Parlour",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryIconDesignLayout(
                  icon: FontAwesomeIcons.angellist,
                  title: "Chef",
                ),
                SizedBox(
                  width: 10,
                ),
                CategoryIconDesignLayout(
                  icon: FontAwesomeIcons.angellist,
                  title: "Photographer",
                ),
                SizedBox(
                  width: 10,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Venues for you',
                  style: defaultBOLDTextStyle,
                ),
                Text(
                  'See all',
                  style: defaultNORMALTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 205,
            width: Get.width,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
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
                          padding: EdgeInsets.only(left: 10),
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              height: 200,
                              width: 150,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(8),
                              //   color: Colors.white,
                              //   border: Border.all(color: greyColor),
                              // ),
                              child: Column(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
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
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '4.5',
                                                style: defaultBOLDTextStyle
                                                    .copyWith(
                                                  fontSize: 13,
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
                                                style: defaultBOLDTextStyle,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '1,45,000',
                                                style: defaultBOLDTextStyle,
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
          )
        ],
      ),
    );
  }
}
