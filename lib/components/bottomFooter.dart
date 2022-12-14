import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../faqpage.dart';
import '../homepage.dart';
import '../partnerspage.dart';
import '../speakerspage.dart';
import '../teamPage.dart';
import '../widgets/info_text.dart';

class BottomFooter extends StatefulWidget {
  const BottomFooter({super.key});

  @override
  State<BottomFooter> createState() => _BottomFooterState();
}

class _BottomFooterState extends State<BottomFooter> {

  int _currentIndex = 0;

  final screens = [
    HomePage(),
    SpeakersPage(),
    PartnersPage(),
    TeamPage(),
    FaqPage(),
  ];
  @override
  Widget build(BuildContext context) {
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
