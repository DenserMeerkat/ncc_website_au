import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';

import '../constants.dart';
import '../resources/carousel.dart';

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
      margin: EdgeInsets.symmetric(horizontal: isMobile ? 4 : 0),
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
          Wrap(
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
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Tooltip(
                    message: date,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.teal[400],
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.teal, width: 2),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            size: 11,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          SelectableText(
                            date,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Tooltip(
                    message: location,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[400],
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.lightGreen, width: 2),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 11,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          SelectableText(
                            location.truncate(
                              size.width < 400 ? 300 ~/ 15 : 500 ~/ 12,
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
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
                label: const Text("View"),
                icon: const Icon(
                  Icons.open_in_new,
                  size: 15,
                ),
              ),
              const SizedBox(width: 10),
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
