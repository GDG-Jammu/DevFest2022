import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.06),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: screenSize.width * 0.5,
            child: const Text(
              'Biggest Developer Fest By Developers For Developers',
              softWrap: true,
              style: TextStyle(
                  fontSize: 54,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF263b5e)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenSize.height * 0.04),
            child: SizedBox(
              width: screenSize.width * 0.5,
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
            padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.02),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: screenSize.width * 0.5,
                    child: const Text(
                      "What's New in DevFest",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF263b5e)),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.5,
                    child: const Text(
                      "This DevFest will be an achievement for the GDG Jalandhar Team as we are all set to host the 2000+ developers by connecting the dots which we have started since a month. We started with the theme of Building Developers at DevCommunity Roadshow, then Guiding Developers at DevCreate Hackathon and now, ready with the theme - Supporting Developers.",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF263b5e)),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.1,
                  ),
                  SizedBox(
                    width: screenSize.width * 0.5,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            color: Colors.blueAccent,
                            width: screenSize.width * 0.1,
                            height: screenSize.height * 0.1,
                            child: const Text('A'),
                          ),
                          Container(
                            color: Colors.blueAccent,
                            width: screenSize.width * 0.1,
                            height: screenSize.height * 0.1,
                            child: const Text('B'),
                          ),
                          Container(
                            color: Colors.blueAccent,
                            width: screenSize.width * 0.1,
                            height: screenSize.height * 0.1,
                            child: const Text('C'),
                          ),
                          Container(
                            color: Colors.blueAccent,
                            width: screenSize.width * 0.1,
                            height: screenSize.height * 0.1,
                            child: const Text('D'),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.width / 6,
                width: screenSize.width / 3.8,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/speaker.png',
                          // fit: BoxFit.cover,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 20,
                          spreadRadius: 5,
                          color: Colors.grey.withOpacity(0.8),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
