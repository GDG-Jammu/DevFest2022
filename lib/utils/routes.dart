import '../pages/faq_page.dart';
import '../pages/home_page.dart';
import '../pages/main_page.dart';
import '../pages/partnerspage.dart';
import '../pages/speakers_page.dart';
import '../pages/team_page.dart';

/// WIP
/// Header Routes will be following google color scheme 
/// in this order 
/// 
/// Speakers - Blue
/// Agenda - Red
/// Partners - yellow
/// FAQ - green

var routes = {
  "" : (context) => MainPage(),
  "" : (context) => HomePage(),
  "" : (context) => SpeakersPage(),
  "" : (context) => PartnersPage(),
  "" : (context) => TeamPage(),
  "" : (context) => FaqPage(),
};