import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ncc_website/components/mydrawer.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/components/web_menu.dart';
import 'package:ncc_website/constants.dart';

import '../resources.dart/carousel.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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
    TabletHomePage(),
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
      appBar: myAppBar,
      drawer: NotificationListener(
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
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: tabs,
      ),
    );
  }
}

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
          const Motto(),
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
          size.width > 880 ? const SizedBox(height: 40) : Container(),
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
