import 'dart:html';

import 'package:flutter/material.dart';

import 'views/desktop/desktop_landing.dart';
import 'views/mobile/mobile_landing.dart';
import 'views/tablet/tablet_landing.dart';
import 'widgets/responsive_layout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      // body: LandingDesktopView(),
      body:ResponsiveWidget(
        smallScreen: LandingPageMobileView(),
        mediumScreen: LandingTabletView(),
        largeScreen: LandingDesktopView(),
      ),
    );
  }
}
