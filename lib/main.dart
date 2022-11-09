import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// import 'home_page.dart';
// import 'main_page.dart';
import 'pages/main_page.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      routes: routes,
      title: 'Devfest jammu 2022',
      theme: ThemeData(
        fontFamily: 'Rubik',
        primaryColor: const Color(0XFF885AF8),
      ),
      home: const MainPage(),
    );
  }
}
