import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/resources.dart/carousel.dart';

import '../../components/footer.dart';

class TabletHomePage extends StatefulWidget {
  const TabletHomePage({
    super.key,
  });

  @override
  State<TabletHomePage> createState() => _TabletHomePageState();
}

class _TabletHomePageState extends State<TabletHomePage> {
  final items = Carousel.carouselImages;
  bool currentState = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          const PageTitle(
            title: " \"Unity And Discipline\" ",
          ),
          const SizedBox(height: 20),
          const TitleText(
            title: "What's New",
          ),
          const SizedBox(
            height: 15,
          ),
          MouseRegion(
            onEnter: (event) => setState(() {
              currentState = !currentState;
            }),
            onExit: (event) => setState(() {
              currentState = !currentState;
            }),
            child: CarouselSlider(
              items: items,
              options: CarouselOptions(
                height: size.width * 0.385 < 320 ? size.width * 0.385 : 320,
                aspectRatio: 16 / 9,
                viewportFraction: .95,
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
            height: 20,
          ),
          NccInfo(size: size),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints(minWidth: 500, maxWidth: 500),
                child: const Column(
                  children: [
                    TitleText(
                      title: "Core Values of NCC",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CoreNCC(),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                constraints: const BoxConstraints(minWidth: 480, maxWidth: 480),
                child: const Column(
                  children: [
                    TitleText(
                      title: "Aim of NCC",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AimNCC(),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Footer(),
        ],
      ),
    );
  }
}
