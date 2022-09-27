import 'package:flutter/material.dart';

//Header Widget of Mobile Web
Widget mobileHeader() {
  return const Text('Coming soon mobile');
}

//Header Widget of Tablet Web
Widget tabletHeader() {
  return const Text('Coming soon tablet');
}

//Header Widget of Desktop Web
Widget desktopHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: const [
          Text(
            'GDG Jammu',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ],
      ),
      Row(
        children: const [
          Text(
            'Home',
            style: TextStyle(
              fontSize: 16.0,
              color: Color(0XFF192A3E),
            ),
          ),
          SizedBox(width: 40),
          InkWell(
            child: Text(
              'Badges',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0XFF192A3E),
              ),
            ),
          ),
          SizedBox(width: 40),
          Text(
            'Community Partners',
            style: TextStyle(
              fontSize: 16.0,
              color: Color(0XFF192A3E),
            ),
          ),
          SizedBox(width: 40),
          Text(
            'FAQ',
            style: TextStyle(
              fontSize: 16.0,
              color: Color(0XFF192A3E),
            ),
          ),
        ],
      ),
    ],
  );
}
