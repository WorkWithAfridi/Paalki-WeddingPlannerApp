import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/constants.dart';
import '../widgets/customBackButton.dart';

class MyOrdersScreen extends StatefulWidget {
  MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 2,
      vsync: this,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Order",
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
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Pending",
                    style: defaultNORMALTextStyle,
                  ),
                ),
                Tab(
                  child: Text(
                    "Order History",
                    style: defaultNORMALTextStyle,
                  ),
                ),
              ],
              controller: tabController,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Container(
                    height: Get.height,
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20.0),
                              child: Container(
                                height: 90,
                                width: Get.width,
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 2,
                                      child: Container(
                                        height: double.maxFinite,
                                        width: double.maxFinite,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: ClipRRect(
                                          child: Image.network(
                                            "https://images.unsplash.com/photo-1605553426886-c0a99033fda0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      flex: 5,
                                      child: Container(
                                        height: double.maxFinite,
                                        width: double.maxFinite,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Wedding Luxury Stage",
                                                        style:
                                                            defaultBOLDTextStyle,
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '৳',
                                                            style:
                                                                defaultBOLDTextStyle
                                                                    .copyWith(
                                                                        fontSize:
                                                                            12),
                                                          ),
                                                          const SizedBox(
                                                            width: 2,
                                                          ),
                                                          Text(
                                                            '1,45,000',
                                                            style:
                                                                defaultBOLDTextStyle
                                                                    .copyWith(
                                                                        fontSize:
                                                                            12),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Delivery date',
                                                      style:
                                                          defaultNORMALTextStyle
                                                              .copyWith(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Text(
                                                      '1/10/2024',
                                                      style:
                                                          defaultNORMALTextStyle
                                                              .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12,
                                                        color: Colors.black
                                                            .withOpacity(.8),
                                                      ),
                                                    ),
                                                  ],
                                                )
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
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              child: Divider(
                                height: 1.5,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: Get.height,
                    width: Get.width,
                    color: Colors.pinkAccent,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
