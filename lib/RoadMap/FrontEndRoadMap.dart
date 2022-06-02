import 'package:career_guide/RoadMap/FrontEnd/Angular.dart';
import 'package:career_guide/RoadMap/FrontEnd/HtmlandCss.dart';
import 'package:career_guide/RoadMap/FrontEnd/JavaSript.dart';
import 'package:career_guide/RoadMap/FrontEnd/ReactJS.dart';
import 'package:career_guide/RoadMap/FrontEnd/Vue.dart';
// import 'package:career_guide/Side_Menu/menu_widget.dart';
import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

import 'FrontEnd/TypeScript.dart';
import 'FrontEnd/WebDevelopmentBasics.dart';




class FrontEndRoadMap extends StatelessWidget {
  const FrontEndRoadMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    IndicatorStyle style = IndicatorStyle(
      width: 40,
      height: 40,
      indicator: Container(
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.indigo,
            ),
          ),
          shape: BoxShape.circle,
          color: Colors.indigo,
        ),
        child: const Center(
          child: Icon(
            Icons.room,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    );

    LineStyle style2 =const  LineStyle(
      color: Colors.grey,
      thickness: 2.5,
    );
    TextStyle tileStyle =
       const  TextStyle(color: Colors.black, fontSize: 22, fontFamily: 'Comfort');
    TextStyle fellowTileStyle =
    TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Comfort');

    TimelineDivider divider = const TimelineDivider(
      begin: 0.1,
      end: 0.9,
      thickness: 2.5,
      color: Colors.grey,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          backgroundColor: const Color(0xFFFAFAFA),
          title: const Text(
            'FrontEnd RoadMap',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontFamily: 'Comfort'),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: const Color(0xFFFAFAFA),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
               const  SizedBox(height: 30),

                TimelineTile(
                  endChild: GestureDetector(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' Web Development Basics',
                        style: tileStyle,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WebDevelopmentBasics()),
                      );
                    },
                  ),
                  alignment: TimelineAlign.manual,
                  lineXY: 0.1,
                  isFirst: true,
                  indicatorStyle: style,
                  beforeLineStyle: style2,
                ),
                divider,
                TimelineTile(
                  startChild: GestureDetector(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        ' HTML and CSS  ',
                        style: tileStyle,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HtmlAndCss()),
                      );
                    },
                  ),
                  alignment: TimelineAlign.manual,
                  lineXY: 0.9,
                  beforeLineStyle: style2,
                  afterLineStyle: style2,
                  indicatorStyle: style,
                ),
                divider,
                TimelineTile(
                  endChild: GestureDetector(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '  JavaScript  ',
                        style: tileStyle,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const  Javascript(),
                          ));
                    },
                  ),
                  alignment: TimelineAlign.manual,
                  lineXY: 0.1,
                  beforeLineStyle: style2,
                  indicatorStyle: style,
                ),
                divider,
                TimelineTile(
                  startChild: GestureDetector(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        ' Type Script ',
                        style: tileStyle,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TypeScript(),
                        ),
                      );
                    },
                  ),
                  alignment: TimelineAlign.manual,
                  lineXY: 0.9,
                  beforeLineStyle: style2,
                  afterLineStyle: style2,
                  indicatorStyle: style,
                ),
                divider,
                TimelineTile(
                  endChild: GestureDetector(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' Angular ',
                        style: tileStyle,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Angular(),
                        ),
                      );
                    },
                  ),
                  alignment: TimelineAlign.manual,
                  lineXY: 0.1,
                  beforeLineStyle: style2,
                  indicatorStyle: style,
                ),
                divider,
                TimelineTile(
                  startChild: GestureDetector(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        ' React JS  ',
                        style: tileStyle,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReactJS(),
                        ),
                      );
                    },
                  ),
                  alignment: TimelineAlign.manual,
                  lineXY: 0.9,
                  beforeLineStyle: style2,
                  afterLineStyle: style2,
                  indicatorStyle: style,
                ),
                divider,
                TimelineTile(
                  endChild: GestureDetector(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' Vue.js  ',
                        style: tileStyle,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Vue(),
                        ),
                      );
                    },
                  ),
                  isLast: true,
                  alignment: TimelineAlign.manual,
                  lineXY: 0.1,
                  beforeLineStyle: style2,
                  indicatorStyle: style,
                ),
                // SizedBox(height: 59),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
