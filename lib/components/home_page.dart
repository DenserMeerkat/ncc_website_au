import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/components/footer.dart';
import 'package:ncc_website/resources.dart/carousel.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool currentState = true;
  final items = Carousel.carouselImages;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double aspectRatio = ResponsiveLayout.checkPlatform(context) == 1
        ? 16 / 5
        : ResponsiveLayout.checkPlatform(context) == 2
            ? size.width < 700
                ? 16 / 8
                : 16 / 6
            : 16 / 8;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const PageTitle(
            icon: Icons.diversity_2_rounded,
            title: " Unity And Discipline ",
          ),
          const SizedBox(
            height: 20,
          ),
          const TitleText(
            title: "What's New",
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MouseRegion(
              onEnter: (event) => setState(() {
                currentState = !currentState;
              }),
              onExit: (event) => setState(() {
                currentState = !currentState;
              }),
              child: CarouselSlider(
                items: items,
                disableGesture: true,
                options: CarouselOptions(
                  //height: size.width * 0.26,
                  aspectRatio: aspectRatio,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: currentState,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          NccInfo(size: size),
          const SizedBox(
            height: 10,
          ),
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
