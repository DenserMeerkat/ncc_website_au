import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ncc_website/components/common.dart';
import 'package:ncc_website/components/footer.dart';
import 'package:ncc_website/resources.dart/carousel.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';

import '../constants.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
    with SingleTickerProviderStateMixin {
  bool currentState = true;
  final items = Carousel.carouselImages;
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: defaultBackgroundColor,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              //pinned: true,
              backgroundColor: defaultBackgroundColor,
              surfaceTintColor: defaultBackgroundColor,
              toolbarHeight: 100,
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              title: const PageTitle(
                icon: Icons.info_rounded,
                title: " About ",
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
              bottom: TabBar(
                controller: _tabController,
                //dividerColor: Colors.transparent,
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: (size.width - 200) * 0.24),
                splashBorderRadius: const BorderRadius.all(Radius.circular(50)),
                tabs: const [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.military_tech_outlined),
                      SizedBox(width: 10),
                      Tab(
                        //iconMargin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        //icon: Icon(Icons.military_tech_outlined),
                        text: "About NCC",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.diversity_3_outlined),
                      SizedBox(width: 10),
                      Tab(
                        //iconMargin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                        //icon: Icon(Icons.military_tech_outlined),
                        text: "Present Batch",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabController,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // const PageTitle(
                    //   icon: Icons.info_rounded,
                    //   title: " About ",
                    // ),
                    const SizedBox(
                      height: 20,
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
                          constraints: const BoxConstraints(
                              minWidth: 500, maxWidth: 500),
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
                          constraints: const BoxConstraints(
                              minWidth: 480, maxWidth: 480),
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
              ),
              const SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const TitleText(
                      title: "Associate NCC Officers",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      spacing: 18,
                      runSpacing: 25,
                      children: [
                        AnoCard(
                          name: "Capt. Dr. A Suresh Babu",
                          plat: "Engineers Platoon",
                        ),
                        AnoCard(
                          name: "Lt. Dr. K Padmanaban Panchu",
                          plat: "EME Platoon",
                        ),
                        AnoCard(
                          name: "Lt. Dr. R Neelakandan",
                          plat: "Signals Platoon",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnoCard extends StatelessWidget {
  final String plat;
  final String name;
  const AnoCard({
    super.key,
    required this.plat,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints(maxHeight: 200),
      decoration: boxDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Placeholder(
              fallbackHeight: 180,
              fallbackWidth: 120,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                      color: Colors.redAccent[100],
                      border: Border.all(color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    plat,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  name,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
