import 'package:career_guide/RoadMap/AndroidDeveloper/BulidApplicantions.dart';
import 'package:career_guide/RoadMap/AndroidDeveloper/Fundamentals.dart';
import 'package:career_guide/RoadMap/AndroidDeveloper/RepoHosting.dart';
import 'package:career_guide/RoadMap/AndroidDeveloper/VersionControl.dart';
import 'package:career_guide/RoadMap/AndroidDeveloper/WritrRoubstApps.dart';
import 'package:career_guide/RoadMap/AndroidDeveloper/language.dart';
// import 'package:career_guide/Side_Menu/menu_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';


class AndroidRoadMap extends StatelessWidget {
  const AndroidRoadMap({Key? key}) : super(key: key);

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

    LineStyle style2 = LineStyle(
      color: Colors.grey,
      thickness: 2.5,
    );
    TextStyle tileStyle =
    TextStyle(color: Colors.black, fontSize: 22, fontFamily: 'Comfort');
    // TextStyle fellowTileStyle =
    // TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'Comfort');

    TimelineDivider divider = TimelineDivider(
      begin: 0.1,
      end: 0.9,
      thickness: 2.5,
      color: Colors.grey,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        title: Text('Android Developer', style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: 'Comfort'),),

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color(0xFFFAFAFA),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 30),

              TimelineTile(
                endChild: GestureDetector(

                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' Pick a Language',
                      style: tileStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Language()),
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
                  child:
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'The Fundamentals ',
                      style: tileStyle,
                    ),
                  ),
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fundamentals()),
                  );},
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
                      ' Version Control System',
                      style: tileStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VersionControl()),
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
                      'Repo Hosting Services ',
                      style: tileStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RepoHosting()),
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
                      ' Build An Application',
                      style: tileStyle,
                    ),
                  ),
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuildApplications()),
                  );},
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
                      'Writing Robust Apps ',
                      style: tileStyle,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RobustApps()),
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
                      ' Keep Learning',
                      style: tileStyle,
                    ),
                  ),
                  onTap: () {},
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
    );
  }
}
