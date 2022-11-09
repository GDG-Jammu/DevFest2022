import 'package:flutter/material.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Expanded(
            child: Text(
              'Biggest Developer Fest By Developers For Developers',
              style: TextStyle(
                  fontSize: 54,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF263b5e)),
            ),
          ),
          Expanded(
            child: Text(
              'Clue of the wooden cottage',
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
