import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../data/constants.dart';
import '../widgets/customBackButton.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "See results",
              style: defaultBOLDTextStyle,
            ),
            Text(
              "'Fokruuddin Ahmed'",
              style: defaultNORMALTextStyle.copyWith(color: Colors.grey),
            ),
          ],
        ),
        centerTitle: true,
        leading: CustomBackButton(),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
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
                              flex: 2,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1532635211-8ec15f2ce05c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 3,
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
                                      "Ahmed Hossain",
                                      style: defaultBOLDTextStyle,
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.',
                                      style: defaultNORMALTextStyle.copyWith(
                                        color: Colors.black.withOpacity(.6),
                                      ),
                                      maxLines: 3,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
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
                                          style: defaultBOLDTextStyle.copyWith(
                                            fontSize: 12,
                                            color: primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Expanded(child: SizedBox.shrink()),
                                    Row(
                                      children: [
                                        Text(
                                          "Starting at: ",
                                          style: defaultNORMALTextStyle.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                              '4,000',
                                              style: defaultBOLDTextStyle
                                                  .copyWith(fontSize: 12),
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
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.count(1, 1.25),
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
