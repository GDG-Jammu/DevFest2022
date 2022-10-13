import 'package:flutter/material.dart';
import 'package:gdg_devfest/widgets/bottom_bar.dart';
import 'package:gdg_devfest/widgets/carousel.dart';
import 'package:gdg_devfest/widgets/featured_heading.dart';
import 'package:gdg_devfest/widgets/featured_tiles.dart';
import 'package:gdg_devfest/widgets/floating_quick_access_bar.dart';
import 'package:gdg_devfest/widgets/main_heading.dart';
import 'package:gdg_devfest/widgets/menu_drawer.dart';
import '../../components/top_bar_contents.dart';

class LandingDesktopView extends StatefulWidget {
  const LandingDesktopView({Key? key}) : super(key: key);

  @override
  State<LandingDesktopView> createState() => _LandingDesktopViewState();
}

class _LandingDesktopViewState extends State<LandingDesktopView> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

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
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MainHeading(screenSize: screenSize),

            //FeaturedHeading(screenSize: screenSize),
            FloatingQuickAccessBar(screenSize: screenSize),
            FeaturedTiles(screenSize: screenSize),
            MainCarousel(),
            SizedBox(
              height: screenSize.height / 10,
            ),
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
