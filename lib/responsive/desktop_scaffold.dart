import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ncc_website/components/web_menu.dart';
import 'package:ncc_website/constants.dart';

import 'package:ncc_website/components/mydrawer.dart';
import 'package:ncc_website/resources.dart/carousel.dart';

import '../components/common.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<Widget> tabs = [
    const DesktopHomePage(),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
    //AboutPage(),
    //EventsPage(),
    //ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NotificationListener(
            child: NotificationListener<MenuChanged>(
              child: MyDrawer(size: size),
              onNotification: (n) {
                setState(() {
                  pageController.jumpToPage(n.index);
                });
                return true;
              },
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Scaffold(
              backgroundColor: defaultBackgroundColor,
              body: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: tabs,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopHomePage extends StatefulWidget {
  const DesktopHomePage({super.key});

  @override
  State<DesktopHomePage> createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  bool currentState = true;
  final items = Carousel.carouselImages;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Motto(),
          const SizedBox(
            height: 10,
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
                  height: size.width * 0.26,
                  aspectRatio: 16 / 10,
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
                child: Column(
                  children: const [
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
                child: Column(
                  children: const [
                    TitleText(
                      title: "Aim of NCC",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AimNCC(),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
