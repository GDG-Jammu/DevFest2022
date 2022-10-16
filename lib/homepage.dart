import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'badgespage.dart';
import 'components/top_bar_contents.dart';
import 'widgets/info_text.dart';
import 'widgets/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  String heading = 'About';

  int _currentIndex = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

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
              child: TopBarContents(_opacity)),
      floatingActionButton: screenSize.width < 800
          ? Padding(
              padding: EdgeInsets.only(bottom: screenSize.height * 0.06),
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                child: Icon(Icons.animation),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => BadgesPage()));
                },
              ),
            )
          : null,
      bottomNavigationBar: screenSize.width < 800 ? footer() : null,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.05,
                  vertical: screenSize.height * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: ResponsiveWidget.isSmallScreen(context)
                        ? screenSize.width * 0.8
                        : screenSize.width * 0.5,
                    child: Text(
                      'Biggest Developer Fest By Developers For Developers',
                      softWrap: true,
                      style: TextStyle(
                          fontSize:
                              ResponsiveWidget.isSmallScreen(context) ? 40 : 54,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263b5e)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: screenSize.height * 0.1),
                    child: SizedBox(
                      width: ResponsiveWidget.isSmallScreen(context)
                          ? screenSize.width * 0.8
                          : screenSize.width * 0.5,
                      child: const Text(
                        'An annual event hosted by the Google Developers Group across the world to bring the technology closer to the developers. It is an all day developer conference where we aim to focus on multiple technologies through lightning talks, sessions, workshops, etc.',
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF263b5e)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: screenSize.height * 0.05),
                    child: Container(
                      height: 40,
                      width: 140,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 59, 111, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Join Now',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveWidget.isSmallScreen(context)
                        ? screenSize.width * 0.8
                        : screenSize.width * 0.5,
                    child: const Text(
                      "What's New in DevFest",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263b5e)),
                    ),
                  ),
                  Container(
                    child: ResponsiveWidget.isSmallScreen(context)
                        ? Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: screenSize.height * 0.05),
                                child: SizedBox(
                                  width: ResponsiveWidget.isSmallScreen(context)
                                      ? screenSize.width * 0.8
                                      : screenSize.width * 0.5,
                                  child: const Text(
                                    "This DevFest will be an achievement for the GDG Jammu Team as we are all set to host the 2000+ developers by connecting the dots which we have started since a month. We started with the theme of Building Developers at DevCommunity Roadshow, then Guiding Developers at DevCreate Hackathon and now, ready with the theme - Supporting Developers.",
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF263b5e)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: screenSize.height * 0.05,
                                    left: screenSize.width * 0.05),
                                child: SizedBox(
                                    height: screenSize.height * 0.4,
                                    width: screenSize.width * 0.8,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'assets/images/jammuresort.jpeg',
                                                  // fit: BoxFit.cover,
                                                ),
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  offset: const Offset(0, 10),
                                                  blurRadius: 20,
                                                  spreadRadius: 5,
                                                  color: Colors.grey
                                                      .withOpacity(0.8),
                                                )
                                              ]),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 15, bottom: 15),
                                            height: 40,
                                            width: screenSize.width * 0.6,
                                            decoration: const BoxDecoration(
                                              color: Colors.deepOrangeAccent,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20.0),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'Jammu Resort, Jammu',
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  letterSpacing: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: screenSize.height * 0.05,
                                    left: screenSize.width * 0.05),
                                child: SizedBox(
                                  width: screenSize.width * 0.8,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.yellowAccent.shade100
                                                .withOpacity(0.5),
                                          ),
                                          width: screenSize.width * 0.35,
                                          height: screenSize.height * 0.2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                '01',
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontFamily: 'Raleway',
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF263b5e)),
                                              ),
                                              Text(
                                                'Day',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Raleway',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color(0xFF263b5e)),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.yellowAccent.shade100
                                                .withOpacity(0.5),
                                          ),
                                          width: screenSize.width * 0.35,
                                          height: screenSize.height * 0.2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                '2000+',
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontFamily: 'Raleway',
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF263b5e)),
                                              ),
                                              Text(
                                                'Attendees',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Raleway',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color(0xFF263b5e)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: screenSize.height * 0.05,
                                    left: screenSize.width * 0.05),
                                child: SizedBox(
                                  width: screenSize.width * 0.8,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.yellowAccent.shade100
                                                .withOpacity(0.5),
                                          ),
                                          width: screenSize.width * 0.35,
                                          height: screenSize.height * 0.2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                '30+',
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontFamily: 'Raleway',
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF263b5e)),
                                              ),
                                              Text(
                                                'Speakers',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Raleway',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color(0xFF263b5e)),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.yellowAccent.shade100
                                                .withOpacity(0.5),
                                          ),
                                          width: screenSize.width * 0.35,
                                          height: screenSize.height * 0.2,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Text(
                                                '9+',
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontFamily: 'Raleway',
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF263b5e)),
                                              ),
                                              Text(
                                                'Technologies',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Raleway',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color(0xFF263b5e)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenSize.height * 0.05),
                                    child: SizedBox(
                                      width: screenSize.width * 0.5,
                                      child: const Text(
                                        "This DevFest will be an achievement for the GDG Jammu Team as we are all set to host the 2000+ developers by connecting the dots which we have started since a month. We started with the theme of Building Developers at DevCommunity Roadshow, then Guiding Developers at DevCreate Hackathon and now, ready with the theme - Supporting Developers.",
                                        softWrap: true,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.normal,
                                            color: Color(0xFF263b5e)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenSize.height * 0.1,
                                  ),
                                  SizedBox(
                                    width: screenSize.width * 0.5,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors
                                                  .yellowAccent.shade100
                                                  .withOpacity(0.5),
                                            ),
                                            width: screenSize.width * 0.1,
                                            height: screenSize.height * 0.13,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  '01',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF263b5e)),
                                                ),
                                                Text(
                                                  'Day',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Color(0xFF263b5e)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors
                                                  .yellowAccent.shade100
                                                  .withOpacity(0.5),
                                            ),
                                            width: screenSize.width * 0.1,
                                            height: screenSize.height * 0.13,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  '2000+',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF263b5e)),
                                                ),
                                                Text(
                                                  'Attendees',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Color(0xFF263b5e)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors
                                                  .yellowAccent.shade100
                                                  .withOpacity(0.5),
                                            ),
                                            width: screenSize.width * 0.1,
                                            height: screenSize.height * 0.13,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  '30+',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF263b5e)),
                                                ),
                                                Text(
                                                  'Speakers',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Color(0xFF263b5e)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors
                                                  .yellowAccent.shade100
                                                  .withOpacity(0.5),
                                            ),
                                            width: screenSize.width * 0.1,
                                            height: screenSize.height * 0.13,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  '9+',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF263b5e)),
                                                ),
                                                Text(
                                                  'Technologies',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Color(0xFF263b5e)),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: screenSize.height * 0.4,
                                  width: screenSize.width * 0.3,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/jammuresort.jpeg',
                                                // fit: BoxFit.cover,
                                              ),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                offset: const Offset(0, 10),
                                                blurRadius: 20,
                                                spreadRadius: 5,
                                                color: Colors.grey
                                                    .withOpacity(0.8),
                                              )
                                            ]),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 15),
                                          height: 40,
                                          width: screenSize.width * 0.25,
                                          decoration: const BoxDecoration(
                                            color: Colors.deepOrangeAccent,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Jammu Resort, Jammu',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: screenSize.height * 0.1),
                    child: const Text(
                      'Technologies to be focused',
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF263b5e)),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.1,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                Colors.yellowAccent.shade100.withOpacity(0.5),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/fluttercircle.png',
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          width: screenSize.width * 0.1,
                          height: screenSize.height * 0.13,
                          child: const Text(''),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                Colors.yellowAccent.shade100.withOpacity(0.5),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/androidcircle.png',
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          width: screenSize.width * 0.1,
                          height: screenSize.height * 0.13,
                          child: const Text(''),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                Colors.yellowAccent.shade100.withOpacity(0.5),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/firebasecircle.png',
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          width: screenSize.width * 0.1,
                          height: screenSize.height * 0.13,
                          child: const Text(''),
                        ),
                      ]),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.1,
                      bottom: screenSize.height * 0.1,
                    ),
                    child: SizedBox(
                      width: ResponsiveWidget.isSmallScreen(context)
                          ? screenSize.width * 0.8
                          : screenSize.width * 0.5,
                      child: const Text(
                        'At sessions that span from the technical to the visionary, let’s celebrate and discover what the technologies can enable: how product innovation, open source, and ML and AI can propel enterprises forward and solve the big problems that impact all of us.',
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF263b5e)),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: screenSize.height * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade100.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.symmetric(
                        vertical: screenSize.height * 0.01,
                        horizontal: ResponsiveWidget.isSmallScreen(context)
                            ? screenSize.width * 0.05
                            : screenSize.width * 0.1),
                    child: SizedBox(
                      width: screenSize.width * 0.8,
                      height: ResponsiveWidget.isSmallScreen(context)
                          ? screenSize.width * 0.8
                          : screenSize.width * 0.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Join our Community',
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF263b5e)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? screenSize.width * 0.05
                                        : screenSize.width * 0.08,
                                vertical: screenSize.height * 0.03),
                            child: const Text(
                              'Google Developers Group Jammu is an initiative of Google Developers to concentrate the efforts of many developers in and around Punjab to learn, share and create using the various Google products. It was founded in 2011 and It has influenced and mentored more than 80,000 Developers, entrepreneurs, IT professionals and gave platform to more than 300 speakers to share their skill with others.',
                              softWrap: true,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF263b5e)),
                            ),
                          ),
                          Container(
                            height: screenSize.height * 0.06,
                            width: ResponsiveWidget.isSmallScreen(context)
                                ? screenSize.width * 0.5
                                : screenSize.width * 0.3,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 59, 111, 255),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Join Our Community',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget footer() {
    if (ResponsiveWidget.isSmallScreen(context)) {
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
    } else {
      return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
          gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: FractionalOffset(0.2, 0.2),
              end: FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        padding: const EdgeInsets.all(30),
        //color: Colors.blueGrey[900],
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        heading,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: 2,
                  height: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoText(
                      type: 'Email',
                      text: 'devfestjammu@gmail.com',
                    ),
                    const SizedBox(height: 5),
                    InfoText(
                      type: 'Address',
                      text: '128, Xyz Road, Jammu, MN - 123456',
                    )
                  ],
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            const Text(
              'Copyright © 2021 | Devfest Jammu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      );
    }
  }
}
