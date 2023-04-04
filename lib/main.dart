import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ncc_website/responsive/desktop_scaffold.dart';
import 'package:ncc_website/responsive/mobile_scaffold.dart';
import 'package:ncc_website/responsive/responsive_layout.dart';
import 'package:ncc_website/responsive/tablet_scaffold.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:go_router/go_router.dart';

void main() async {
  setPathUrlStrategy();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const Material(
          child: ResponsiveLayout(
            mobileScaffold: MobileScaffold(pageIndex: 0),
            tabletScaffold: TabletScaffold(pageIndex: 0),
            desktopScaffold: DesktopScaffold(pageIndex: 0),
          ),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/about',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const Material(
          child: ResponsiveLayout(
            mobileScaffold: MobileScaffold(pageIndex: 1),
            tabletScaffold: TabletScaffold(pageIndex: 1),
            desktopScaffold: DesktopScaffold(pageIndex: 1),
          ),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/events',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const Material(
          child: ResponsiveLayout(
            mobileScaffold: MobileScaffold(pageIndex: 2),
            tabletScaffold: TabletScaffold(pageIndex: 2),
            desktopScaffold: DesktopScaffold(pageIndex: 2),
          ),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/gallery',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const Material(
          child: ResponsiveLayout(
            mobileScaffold: MobileScaffold(pageIndex: 3),
            tabletScaffold: TabletScaffold(pageIndex: 3),
            desktopScaffold: DesktopScaffold(pageIndex: 3),
          ),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
    GoRoute(
      path: '/alumni',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const Material(
          child: ResponsiveLayout(
            mobileScaffold: MobileScaffold(pageIndex: 4),
            tabletScaffold: TabletScaffold(pageIndex: 4),
            desktopScaffold: DesktopScaffold(pageIndex: 4),
          ),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'NCC | Anna University',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.red,
        ),
        themeMode: ThemeMode.light,
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      ),
    );
  }
}
