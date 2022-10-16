import 'package:flutter/material.dart';
import 'package:gdg_devfest/widgets/responsive_layout.dart';
import 'package:image_picker/image_picker.dart';
import 'components/top_bar_contents.dart';

class BadgesPage extends StatefulWidget {
  BadgesPage({Key? key}) : super(key: key);

  @override
  State<BadgesPage> createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  double _scrollPosition = 0;
  double _opacity = 0;

  var image;
  final picker = ImagePicker();

  bool circleShape = false;

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = pickedFile!.path;
    });
  }

  changeShape() {
    setState(() {
      circleShape = !circleShape;
    });
  }

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
              height: screenSize.height,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: screenSize.height * 0.1,
                                  ),
                                  Text(
                                    'DevFest Jammu Badge',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32 *
                                            MediaQuery.of(context)
                                                .textScaleFactor),
                                    textAlign: TextAlign.left,
                                  ),
                                  const Text(
                                      'Now that you are here, how about personalising your DevFest Jalandhar 2022 profile? Upload an image and generate a personalised badge with the DevFest Jalandhar 2022 frame. Also share your image using #DevFestJalandhar on different social platforms.'),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              constraints: BoxConstraints(
                                maxWidth: screenSize.width * 0.85,
                                minWidth: screenSize.width * 0.8,
                                maxHeight: screenSize.width * 0.85,
                                minHeight: screenSize.width * 0.8,
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                height: screenSize.width * 0.3,
                                width: screenSize.width * 0.3,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      offset: const Offset(0, 0),
                                      blurRadius: 1,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: circleShape
                                      ? cicleImageStack(screenSize)
                                      : squareImageStack(screenSize),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Select an Image",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    16 * MediaQuery.of(context).textScaleFactor,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  minimumSize: const Size(200, 60),
                                  backgroundColor: const Color(0xff34ac13)),
                              onPressed: () async {
                                await getImage();
                              },
                              child: Text(
                                "Upload Image",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16 *
                                      MediaQuery.of(context).textScaleFactor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Select Shape",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    16 * MediaQuery.of(context).textScaleFactor,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (circleShape) {
                                        changeShape();
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: circleShape
                                              ? Border.all(
                                                  color: const Color(0xff34ac13)
                                                      .withOpacity(0.6),
                                                )
                                              : null,
                                          color: !circleShape
                                              ? const Color(0xff34ac13)
                                                  .withOpacity(0.6)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                        child: Text("Square"),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (!circleShape) {
                                        changeShape();
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          border: !circleShape
                                              ? Border.all(
                                                  color: const Color(0xff34ac13)
                                                      .withOpacity(0.6),
                                                )
                                              : null,
                                          color: circleShape
                                              ? const Color(0xff34ac13)
                                                  .withOpacity(0.6)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                        child: Text("Circle"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textScaleFactor: 1,
                              text: const TextSpan(
                                text: '* ',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'We respect your privacy and are not storing your pictures on our servers.',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              //height: screenSize.height * 0.9,
                              constraints: BoxConstraints(
                                maxWidth: screenSize.width * 0.35,
                                minWidth: screenSize.width * 0.25,
                              ),
                              // color: Colors.green,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'DevFest Jammu Badge',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32 *
                                            MediaQuery.of(context)
                                                .textScaleFactor),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Now that you are here, how about personalising your DevFest Jammu 2022 profile? Upload an image and generate a personalised badge with the DevFest Jammu 2022 frame. Also share your image using #DevFestJammu on different social media platforms.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16 *
                                          MediaQuery.of(context)
                                              .textScaleFactor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Select an Image",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16 *
                                          MediaQuery.of(context)
                                              .textScaleFactor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        minimumSize: const Size(200, 60),
                                        backgroundColor:
                                            const Color(0xff34ac13)),
                                    onPressed: () async {
                                      await getImage();
                                    },
                                    child: Text(
                                      "Upload Image",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16 *
                                            MediaQuery.of(context)
                                                .textScaleFactor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Select Shape",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16 *
                                          MediaQuery.of(context)
                                              .textScaleFactor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            if (circleShape) {
                                              changeShape();
                                            } else {
                                              return;
                                            }
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                border: circleShape
                                                    ? Border.all(
                                                        color: const Color(
                                                                0xff34ac13)
                                                            .withOpacity(0.6),
                                                      )
                                                    : null,
                                                color: !circleShape
                                                    ? const Color(0xff34ac13)
                                                        .withOpacity(0.6)
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: const Center(
                                              child: Text("Square"),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            if (!circleShape) {
                                              changeShape();
                                            } else {
                                              return;
                                            }
                                          },
                                          child: Container(
                                            height: 50,
                                            width: 150,
                                            decoration: BoxDecoration(
                                                border: !circleShape
                                                    ? Border.all(
                                                        color: const Color(
                                                                0xff34ac13)
                                                            .withOpacity(0.6),
                                                      )
                                                    : null,
                                                color: circleShape
                                                    ? const Color(0xff34ac13)
                                                        .withOpacity(0.6)
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: const Center(
                                              child: Text("Circle"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                    textScaleFactor: 1,
                                    text: const TextSpan(
                                      text: '* ',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                'We respect your privacy and are not storing your pictures on our servers.',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              constraints: BoxConstraints(
                                maxWidth: screenSize.width * 0.45,
                                minWidth: screenSize.width * 0.4,
                                maxHeight: screenSize.width * 0.45,
                                minHeight: screenSize.width * 0.4,
                              ),
                              child: Container(
                                  padding: const EdgeInsets.all(20),
                                  alignment: Alignment.center,
                                  height: screenSize.width * 0.3,
                                  width: screenSize.width * 0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        offset: const Offset(0, 0),
                                        blurRadius: 1,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: circleShape
                                        ? cicleImageStack(screenSize)
                                        : squareImageStack(screenSize),
                                  )),
                            ),
                          ],
                        ),
                ],
              )),
        ),
      ),
    );
  }

  Widget cicleImageStack(screenSize) {
    return Stack(
      children: [
        CircleAvatar(
          minRadius: screenSize.width * 0.30,
          maxRadius: screenSize.width * 0.35,
          backgroundColor: Colors.transparent,
          backgroundImage: (image != null)
              ? NetworkImage(
                  image,
                )
              : null,
        ),
        CircleAvatar(
          minRadius: screenSize.width * 0.30,
          maxRadius: screenSize.width * 0.35,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          child: ClipRRect(
            child: Image.asset('assets/images/badges-jammu.png'),
          ),
        )
      ],
    );
  }

  Widget squareImageStack(screenSize) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          constraints: BoxConstraints(
            maxHeight: screenSize.width * 0.35,
            maxWidth: screenSize.width * 0.35,
            minHeight: screenSize.width * 0.30,
            minWidth: screenSize.width * 0.30,
          ),
          child: (image != null)
              ? Image(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        Container(
          constraints: BoxConstraints(
            maxHeight: screenSize.width * 0.35,
            maxWidth: screenSize.width * 0.35,
            minHeight: screenSize.width * 0.30,
            minWidth: screenSize.width * 0.30,
          ),
          child: Image.asset(
            'assets/images/badge-square.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
