import 'package:flutter/material.dart';
import 'package:ncc_website/components/about_page.dart';
import 'package:ncc_website/components/gallery_page.dart';
import 'package:ncc_website/components/home_page.dart';
import 'package:ncc_website/components/web_menu.dart';
import 'package:ncc_website/constants.dart';
import 'package:ncc_website/components/mydrawer.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';

import '../components/events_page.dart';

class DesktopScaffold extends StatefulWidget {
  final int pageIndex;
  const DesktopScaffold({super.key, required this.pageIndex});

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
    const HomePage(),
    const AboutPage(),
    const EventPage(),
    const GalleryPage(),
    Container(color: Colors.yellow),
    //AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int device = ResponsiveLayout.checkPlatform(context);
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          device == 1
              ? NotificationListener(
                  child: NotificationListener<MenuChanged>(
                    child: MyDrawer(size: size),
                    onNotification: (n) {
                      setState(() {
                        pageController.jumpToPage(n.index);
                      });
                      return true;
                    },
                  ),
                )
              : const SizedBox(
                  width: 0,
                ),
          const SizedBox(width: 5),
          Expanded(
            child: Scaffold(
              backgroundColor: defaultBackgroundColor,
              body: tabs[widget.pageIndex],
              // PageView(
              //   physics: const NeverScrollableScrollPhysics(),
              //   controller: pageController,
              //   children: tabs,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
