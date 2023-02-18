import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/components/footer.dart';
import 'package:ncc_website/resources.dart/carousel.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({
    super.key,
  });

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  late CarouselController carouselController;
  final items = Carousel.carouselImages;
  bool currentState = true;

  @override
  void initState() {
    carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const PageTitle(
            title: " \"Unity And Discipline\" ",
          ),
          const SizedBox(
            height: 30,
          ),
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
                height: 190,
                aspectRatio: 16 / 9,
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
            height: 20,
          ),
          NccInfo(size: size),
          const SizedBox(
            height: 10,
          ),
          const TitleText(
            title: "Aim of NCC",
          ),
          const SizedBox(
            height: 15,
          ),
          const AimNCC(),
          const SizedBox(
            height: 15,
          ),
          const TitleText(
            title: "Core Values of NCC",
          ),
          const SizedBox(
            height: 15,
          ),
          const CoreNCC(),
          const SizedBox(
            height: 40,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
