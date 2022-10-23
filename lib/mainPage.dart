import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gdg_devfest/components/bottomFooter.dart';

import 'faqpage.dart';
import 'homepage.dart';
import 'partnerspage.dart';
import 'speakerspage.dart';
import 'teamPage.dart';
import 'widgets/info_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  void onTap(int index) {}

  List pages = [
    HomePage(),
    SpeakersPage(),
    PartnersPage(),
    TeamPage(),
    FaqPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: screenSize.width < 800 ? bottomFooter() : null,
    );
  }
  
  Widget bottomFooter() {
   return BottomNavyBar(
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home_filled),
          title: Text('Home'),
          activeColor: Colors.red,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text('Speakers'),
          activeColor: Colors.yellow,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.group_add),
          title: Text(
            ' Partners',
          ),
          activeColor: Colors.blue,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.group),
          title: Text('Team'),
          activeColor: Colors.orange,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.question_answer),
          title: Text('FAQ'),
          activeColor: Colors.green,
          textAlign: TextAlign.center,
        ),
      ],
    );

  }
}
