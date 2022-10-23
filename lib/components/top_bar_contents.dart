import 'package:flutter/material.dart';
import 'package:gdg_devfest/badgespage.dart';
import 'package:gdg_devfest/faqpage.dart';
import 'package:gdg_devfest/mainPage.dart';
import 'package:gdg_devfest/partnerspage.dart';
import 'package:gdg_devfest/speakerspage.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            const Text(
              'DevFest Jammu',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 24,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: screenSize.width / 25,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const MainPage()),
                        (route) => false);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Home',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: _isHovering[0]
                                ? const Color(0xFF077bd7)
                                : Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[0],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 25,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => BadgesPage()));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Badges',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: _isHovering[1]
                                ? const Color(0xFF077bd7)
                                : Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[1],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 25,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const SpeakersPage()));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Speakers',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: _isHovering[2]
                                ? const Color(0xFF077bd7)
                                : Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[2],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 25,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  },
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const PartnersPage()));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Partners',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: _isHovering[3]
                                ? const Color(0xFF077bd7)
                                : Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[3],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 25,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[4] = true : _isHovering[4] = false;
                    });
                  },
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const FaqPage()));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'FAQ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: _isHovering[4]
                                ? const Color(0xFF077bd7)
                                : Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[4],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: const Color(0xFF051441),
                        ),
                      )
                    ],
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
