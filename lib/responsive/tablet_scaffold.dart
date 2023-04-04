import 'package:flutter/material.dart';
import 'package:ncc_website/components/about_page.dart';
import 'package:ncc_website/components/alumni_page.dart';
import 'package:ncc_website/components/gallery_page.dart';
import 'package:ncc_website/components/home_page.dart';
import 'package:ncc_website/components/mydrawer.dart';
import 'package:ncc_website/components/web_menu.dart';
import 'package:ncc_website/constants.dart';
import 'package:ncc_website/components/events_page.dart';

class TabletScaffold extends StatefulWidget {
  final int pageIndex;
  const TabletScaffold({super.key, required this.pageIndex});

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
    const HomePage(),
    const AboutPage(),
    const EventPage(),
    const GalleryPage(),
    const AlumniPage(),
    //AboutPage(),
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
      body: tabs[widget.pageIndex],
      // PageView(
      //   physics: const NeverScrollableScrollPhysics(),
      //   controller: pageController,
      //   children: tabs,
      // ),
    );
  }
}
