import 'package:flutter/material.dart';
import '../../components/header.dart';

class LandingDesktopView extends StatefulWidget {
  const LandingDesktopView({Key? key}) : super(key: key);

  @override
  State<LandingDesktopView> createState() => _LandingDesktopViewState();
}

class _LandingDesktopViewState extends State<LandingDesktopView> {
  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thumbVisibility: true,
      radius: Radius.circular(10.0),
      thumbColor: Color.fromARGB(255, 112, 112, 112),
      child: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 219, 232, 255),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                  //HEADER
                  child: desktopHeader(),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 60.0, left: 50, right: 40, bottom: 80.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Build good things, together.',
                              softWrap: true,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Color(0XFF192A3E),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            const Text(
                              'Google Developer Group Jammu is an initiative to concentrate \n the efforts of many developers in and around Jammu to learn,\n share and get productive using the various Google products.',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color(0XFF192A3E),
                                // color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            Container(
                              height: 40,
                              width: 140,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 59, 111, 255),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              child: const  Center(
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
                          ],
                        ),
                        const Flexible(child: SizedBox()),
                        Flexible(
                          child: Wrap(
                            children: [
                              Image.asset(
                                'assets/images/urban_woman.png',
                                // width: 550,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

