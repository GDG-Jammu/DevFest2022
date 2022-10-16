
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      title: 'Devfest jammu 2022',
      theme: ThemeData(
        fontFamily: 'Rubik',
        primaryColor: const Color(0XFF885AF8),
      ),
      home: const HomePage(title: 'Devfest 2022 jammu'),
    );
  }
}
