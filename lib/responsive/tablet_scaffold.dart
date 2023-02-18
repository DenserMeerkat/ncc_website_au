import 'package:flutter/material.dart';
import 'package:ncc_website/components/mydrawer.dart';
import 'package:ncc_website/components/web_menu.dart';
import 'package:ncc_website/constants.dart';
import 'package:ncc_website/components/events_page.dart';
import 'package:ncc_website/responsive/tablet/home_tablet.dart';

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
    const TabletHomePage(),
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
