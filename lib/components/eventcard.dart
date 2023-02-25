import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';

import '../constants.dart';
import '../resources.dart/carousel.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String location;
  final String date;
  final String description;
  final List<Widget> imgList;
  final String fileURL;
  EventCard({
    super.key,
    required this.title,
    required this.date,
    required this.location,
    required this.description,
    required this.imgList,
    required this.fileURL,
  });
  final items = Carousel.carouselImages;

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ResponsiveLayout.checkPlatform(context) == 3;
    final bool isTablet = ResponsiveLayout.checkPlatform(context) == 2;
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16,
      ),
      margin: EdgeInsets.symmetric(horizontal: isMobile ? 15 : 0),
      width: 500,
      decoration:
          boxDecoration.copyWith(borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                const Icon(Icons.flag_circle),
                SelectableText(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Tooltip(
                      message: date,
                      child: Chip(
                        backgroundColor: Colors.red[50],
                        side: const BorderSide(color: Colors.black45, width: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        avatar: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black87, width: 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const FittedBox(
                            child: Icon(
                              Icons.calendar_month,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        label: SelectableText(
                          date,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Tooltip(
                      message: location,
                      child: Chip(
                        backgroundColor: Colors.green[50],
                        side: const BorderSide(color: Colors.black45, width: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        avatar: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black87, width: 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const FittedBox(
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        label: SelectableText(
                          location.truncate(
                            isMobile ? 300 ~/ 18 : 500 ~/ 18,
                          ),
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            //width: double.infinity,
            height: 250,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            //constraints: const BoxConstraints(minHeight: 10, maxHeight: 400),
            child: CarouselSlider(
              items: imgList,
              options: CarouselOptions(
                height: 250,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpandableText(
              description,
              expandText: "Show More",
              collapseText: "Show Less",
              maxLines: 4,
              animation: true,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 300),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Spacer(),
              FilledButton.icon(
                onPressed: () {},
                label: const SelectableText("View"),
                icon: const Icon(
                  Icons.open_in_new,
                  size: 15,
                ),
              ),
              const SizedBox(width: 10),
              FilledButton.icon(
                onPressed: () {},
                label: const SelectableText("Report"),
                icon: const Icon(
                  Icons.download,
                  size: 15,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class EventImage extends StatelessWidget {
  final String imageURL;
  final String caption;
  const EventImage({
    super.key,
    required this.imageURL,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              imageURL,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.indigo[100],
            ),
            child: Center(child: SelectableText(caption)),
          ),
        ],
      ),
    );
  }
}
