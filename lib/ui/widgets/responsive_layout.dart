import 'package:flutter/material.dart';
// import 'package:gdg_devfest/home_page.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    required this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          print(
            // height: MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width,
          );
          return mediumScreen ?? smallScreen;
        } else if (constraints.maxWidth <= 1080 && constraints.maxWidth > 800) {
          print(
            // height: MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width,
          );
          return mediumScreen ?? largeScreen;
        } else {
          print(
            // height: MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width,
          );
          return largeScreen;
        }
      },
    );
  }
}
