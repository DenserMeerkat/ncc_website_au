import 'package:flutter/material.dart';
import 'package:ncc_website/components/web_menu.dart';
import 'package:ncc_website/constants.dart';
import 'package:ncc_website/components/mydrawer.dart';
import 'package:ncc_website/responsive/desktop/home_desktop.dart';

import '../components/events_page.dart';

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
    const EventPage(),
    Container(color: Colors.orange),
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
