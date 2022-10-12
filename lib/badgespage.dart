import 'package:flutter/material.dart';
import 'package:gdg_devfest/widgets/responsive_layout.dart';

import 'components/top_bar_contents.dart';

class BadgesPage extends StatefulWidget {
  BadgesPage({Key? key}) : super(key: key);

  @override
  State<BadgesPage> createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  double _scrollPosition = 0;
  double _opacity = 0;

  final _scrollController = ScrollController();

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
      body: Center(
        child: Scrollbar(
          controller: _scrollController,
          child: Container(
             // color: Colors.red,
              height: screenSize.height,
              // constraints: const BoxConstraints(maxWidth: 1200, minWidth: 600),
              margin: ResponsiveWidget.isSmallScreen(context)
                  ? const EdgeInsets.symmetric(horizontal: 20)
                  : const EdgeInsets.symmetric(horizontal: 40),
              child: ListView(
                shrinkWrap: true,
                controller: _scrollController,
                children: [
                  ResponsiveWidget.isSmallScreen(context)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              color: Colors.green,
                              child: const Text('Hello'),
                            ),
                            Container(
                              color: Colors.yellow,
                              child: const Text('Hello'),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: screenSize.height * 0.9,
                                constraints: BoxConstraints(
                                  maxWidth: screenSize.width * 0.35,
                                  minWidth: screenSize.width * 0.25,
                                ),
                               // color: Colors.green,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'DevFest Jammu Badge',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 32 *
                                              MediaQuery.of(context)
                                                  .textScaleFactor),
                                    ),
                                    const Text(
                                        'Now that you are here, how about personalising your DevFest Jalandhar 2022 profile? Upload an image and generate a personalised badge with the DevFest Jalandhar 2022 frame. Also share your image using #DevFestJalandhar on different social platforms.'),
                                  ],
                                )),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: screenSize.width * 0.65,
                                minWidth: screenSize.width * 0.55,
                              ),
                              color: Colors.yellow,
                              child: const Text('Hello'),
                            ),
                          ],
                        ),
                ],
              )),
        ),
      ),
    );
  }
}
