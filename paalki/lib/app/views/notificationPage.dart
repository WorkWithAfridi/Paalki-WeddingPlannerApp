import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../data/constants.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
              "Notification",
              style: defaultBOLDTextStyle,
            ),
          ),
          Container(
            width: Get.width,
            height: 40,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      "New",
                      style: defaultBOLDTextStyle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '09',
                        style: defaultBOLDTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sort by',
                      style: defaultNORMALTextStyle.copyWith(
                          fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 14,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: 9,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 15),
                        child: Container(
                          height: 70,
                          width: Get.width,
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: double.maxFinite,
                                  width: double.maxFinite,
                                  child: ClipRRect(
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1550639525-c97d455acf70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=726&q=80",
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
                                flex: 6,
                                child: SizedBox(
                                  height: double.maxFinite,
                                  width: double.maxFinite,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "40% OFF",
                                        style: defaultBOLDTextStyle,
                                      ),
                                      Text(
                                        "in Ultraboost all bridal series",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: defaultNORMALTextStyle.copyWith(
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '2 hours ago',
                                        style: defaultNORMALTextStyle.copyWith(
                                            fontSize: 14, color: Colors.grey),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
