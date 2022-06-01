import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../data/constants.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              "Favorites",
              style: defaultBOLDTextStyle,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          shadowColor: Colors.grey.withOpacity(.5),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 90,
                            width: Get.width,
                            child: Row(
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Container(
                                    height: double.maxFinite,
                                    width: double.maxFinite,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    child: ClipRRect(
                                      child: Image.network(
                                        "https://images.unsplash.com/photo-1571113908007-5d6aae13d73e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  flex: 5,
                                  child: SizedBox(
                                    height: double.maxFinite,
                                    width: double.maxFinite,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Wedding Car",
                                              style: defaultBOLDTextStyle,
                                            ),
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: defaultNORMALTextStyle
                                                  .copyWith(fontSize: 12),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
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
                                                      style:
                                                          defaultBOLDTextStyle
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
                                                      style:
                                                          defaultBOLDTextStyle
                                                              .copyWith(
                                                                  fontSize: 12),
                                                    ),
                                                    const SizedBox(
                                                      width: 2,
                                                    ),
                                                    Text(
                                                      '1,45,000',
                                                      style:
                                                          defaultBOLDTextStyle
                                                              .copyWith(
                                                                  fontSize: 12),
                                                    ),
                                                    Text(
                                                      ' /Day',
                                                      style:
                                                          defaultNORMALTextStyle
                                                              .copyWith(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
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
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
