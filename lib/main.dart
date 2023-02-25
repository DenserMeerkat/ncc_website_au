import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ncc_website/responsive/desktop_scaffold.dart';
import 'package:ncc_website/responsive/mobile_scaffold.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';
import 'package:ncc_website/responsive/tablet_scaffold.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'NCC | Anna University',
          theme: ThemeData(
            useMaterial3: true,
            primarySwatch: Colors.red,
          ),
          themeMode: ThemeMode.light,
          home: const SafeArea(
            child: ResponsiveLayout(
              mobileScaffold: MobileScaffold(),
              tabletScaffold: TabletScaffold(),
              desktopScaffold: DesktopScaffold(),
            ),
          )),
    );
  }
}
