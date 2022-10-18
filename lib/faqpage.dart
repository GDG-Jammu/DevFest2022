import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components/top_bar_contents.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  double _scrollPosition = 0;
  double _opacity = 0;

  final _scrollController = ScrollController();
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
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
      body: Accordion(
        maxOpenSections: 1,
        headerBackgroundColorOpened: Colors.green,
        scaleWhenAnimating: true,
        openAndCloseAnimation: true,
        sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
        sectionClosingHapticFeedback: SectionHapticFeedback.light,
        children: [
          AccordionSection(
            isOpen: false,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.green,
            headerBackgroundColorOpened: Colors.blueAccent,
            header: Text('What is Devfest', style: _headerStyle),
            content: Text(_loremIpsum, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: false,
            leftIcon: const Icon(Icons.compare_rounded, color: Colors.white),
            header: Text('What is devfest jammu', style: _headerStyle),
            contentBorderColor: const Color(0xffffffff),
            headerBackgroundColor: Colors.green,
            headerBackgroundColorOpened: Colors.blueAccent,
            content: Accordion(
              maxOpenSections: 1,
              headerBackgroundColorOpened: Colors.black54,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              children: [
                AccordionSection(
                  isOpen: false,
                  leftIcon:
                      const Icon(Icons.insights_rounded, color: Colors.white),
                  headerBackgroundColor: Colors.black38,
                  headerBackgroundColorOpened: Colors.black54,
                  header: Text('Vision', style: _headerStyle),
                  content: Text(_loremIpsum, style: _contentStyle),
                  contentHorizontalPadding: 20,
                  contentBorderColor: Colors.black54,
                ),
                AccordionSection(
                  isOpen: false,
                  leftIcon:
                      const Icon(Icons.compare_rounded, color: Colors.white),
                  header: Text('Agenda', style: _headerStyle),
                  headerBackgroundColor: Colors.black38,
                  headerBackgroundColorOpened: Colors.black54,
                  contentBorderColor: Colors.black54,
                  content: Row(
                    children: [
                      const Icon(Icons.compare_rounded,
                          size: 120, color: Colors.orangeAccent),
                      Flexible(
                          flex: 1,
                          child: Text(_loremIpsum, style: _contentStyle)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AccordionSection(
            isOpen: false,
            leftIcon: const Icon(Icons.food_bank, color: Colors.white),
            header: Text('What is the Timeline of this event?',
                style: _headerStyle),
            headerBackgroundColor: Colors.green,
            headerBackgroundColorOpened: Colors.blueAccent,
            content: DataTable(
              sortAscending: true,
              sortColumnIndex: 1,
              dataRowHeight: 40,
              showBottomBorder: false,
              columns: [
                DataColumn(
                    label: Text('Time', style: _contentStyleHeader),
                    numeric: true),
                DataColumn(label: Text('Speaker', style: _contentStyleHeader)),
                DataColumn(
                    label: Text('Topic', style: _contentStyleHeader),
                    numeric: true),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('1',
                        style: _contentStyle, textAlign: TextAlign.right)),
                    DataCell(Text('Person 1', style: _contentStyle)),
                    DataCell(Text('Firebase',
                        style: _contentStyle, textAlign: TextAlign.right))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('2',
                        style: _contentStyle, textAlign: TextAlign.right)),
                    DataCell(Text('Person 2', style: _contentStyle)),
                    DataCell(Text('Firebase',
                        style: _contentStyle, textAlign: TextAlign.right))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('3',
                        style: _contentStyle, textAlign: TextAlign.right)),
                    DataCell(Text('Person 3', style: _contentStyle)),
                    DataCell(Text('Firebase',
                        style: _contentStyle, textAlign: TextAlign.right))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('4',
                        style: _contentStyle, textAlign: TextAlign.right)),
                    DataCell(Text('Person 4', style: _contentStyle)),
                    DataCell(Text('Firebase',
                        style: _contentStyle, textAlign: TextAlign.right))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('5',
                        style: _contentStyle, textAlign: TextAlign.right)),
                    DataCell(Text('Person 5', style: _contentStyle)),
                    DataCell(Text('Firebase',
                        style: _contentStyle, textAlign: TextAlign.right))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('6',
                        style: _contentStyle, textAlign: TextAlign.right)),
                    DataCell(Text('Person 6', style: _contentStyle)),
                    DataCell(Text('Firebase',
                        style: _contentStyle, textAlign: TextAlign.right))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('7',
                        style: _contentStyle, textAlign: TextAlign.right)),
                    DataCell(Text('Person 7', style: _contentStyle)),
                    DataCell(Text('Firebase',
                        style: _contentStyle, textAlign: TextAlign.right))
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('8',
                        style: _contentStyle, textAlign: TextAlign.right)),
                    DataCell(Text('Person 8', style: _contentStyle)),
                    DataCell(Text('Firebase',
                        style: _contentStyle, textAlign: TextAlign.right))
                  ],
                ),
              ],
            ),
          ),
          AccordionSection(
            isOpen: false,
            headerBackgroundColor: Colors.green,
            headerBackgroundColorOpened: Colors.blueAccent,
            leftIcon: const Icon(Icons.contact_page, color: Colors.white),
            header: Text('Who can Join it?', style: _headerStyle),
            content: Wrap(
              children: List.generate(
                  30,
                  (index) => const Icon(Icons.contact_page,
                      size: 30, color: Color(0xff999999))),
            ),
          ),
          AccordionSection(
            isOpen: false,
            headerBackgroundColor: Colors.green,
            headerBackgroundColorOpened: Colors.blueAccent,
            leftIcon: const Icon(Icons.computer, color: Colors.white),
            header: Text('Jobs', style: _headerStyle),
            content:
                const Icon(Icons.computer, size: 200, color: Color(0xff999999)),
          ),
          AccordionSection(
            isOpen: false,
            headerBackgroundColor: Colors.green,
            headerBackgroundColorOpened: Colors.blueAccent,
            leftIcon: const Icon(Icons.movie, color: Colors.white),
            header: Text('Culture', style: _headerStyle),
            content:
                const Icon(Icons.movie, size: 200, color: Color(0xff999999)),
          ),
          AccordionSection(
            isOpen: false,
            headerBackgroundColor: Colors.green,
            headerBackgroundColorOpened: Colors.blueAccent,
            leftIcon: const Icon(Icons.people, color: Colors.white),
            header: Text('Why can you partner with us?', style: _headerStyle),
            content:
                const Icon(Icons.people, size: 200, color: Color(0xff999999)),
          ),
          AccordionSection(
            isOpen: false,
            headerBackgroundColor: Colors.green,
            headerBackgroundColorOpened: Colors.blueAccent,
            leftIcon: const Icon(Icons.map, color: Colors.white),
            header: Text('What will you get to learn?', style: _headerStyle),
            content: const Icon(Icons.map, size: 200, color: Color(0xff999999)),
          ),
        ],
      ),
    );
  }
}
