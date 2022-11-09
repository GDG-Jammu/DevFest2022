import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gdg_devfest/ui/widgets/responsive_layout.dart';

import '../components/top_bar_contents.dart';

class PartnersPage extends StatefulWidget {
  const PartnersPage({super.key});

  @override
  State<PartnersPage> createState() => _PartnersPageState();
}

class _PartnersPageState extends State<PartnersPage> {
  double _scrollPosition = 0;
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: screenSize.width < 800
          ? AppBar(
              iconTheme: const IconThemeData(color: Colors.blueGrey),
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(_opacity),
              title: const Text(
                'DevFest Jammu',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContents(_opacity),
            ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: screenSize.width,
              child: Text(
                'Our Partners',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: ResponsiveWidget.isSmallScreen(context) ? 40 : 54,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.05),
              child: Container(
                height: 40,
                width: ResponsiveWidget.isSmallScreen(context)
                    ? screenSize.width * 0.40
                    : screenSize.width * 0.2,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 59, 111, 255),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Become A Sponsor',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            screenSize.width < 800
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Front',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to see Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          back: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Back',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to flip front',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Front',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to see Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          back: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Back',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to flip front',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Front',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to see Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          back: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Back',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to flip front',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Front',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to see Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          back: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Back',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to flip front',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Front',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to see Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          back: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Back',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to flip front',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Front',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to see Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          back: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Back',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to flip front',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Front',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to see Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          back: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Back',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to flip front',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: FlipCard(
                          direction: FlipDirection.HORIZONTAL,
                          speed: 1000,
                          onFlipDone: (status) {
                            print(status);
                          },
                          front: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Front',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to see Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                          back: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF006666),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Back',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                Text('Click here to flip front',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
