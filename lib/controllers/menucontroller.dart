import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:ncc_website/responsive/mobile_scaffold.dart';

class MenuController1 extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems => [
        "Home",
        "About ",
        "Events",
        "Gallery",
        "Alumni",
        //"Contact",
      ];
  List<IconData> get menuIcons => [
        Icons.home_outlined,
        Icons.info_outline_rounded,
        Icons.tour_outlined,
        Icons.photo_library_outlined,
        Icons.school_outlined,
        //Icons.mail_outlined,
      ];
  List<IconData> get menuIconsFilled => [
        Icons.home,
        Icons.info,
        Icons.tour_rounded,
        Icons.photo_library_rounded,
        Icons.school_rounded,
        //Icons.mail,
      ];
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }

  int getMenuIndex() {
    return _selectedIndex.value;
  }
}
