
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildApplications extends StatefulWidget {
  const BuildApplications({Key? key}) : super(key: key);

  @override
  _BuildApplicationsState createState() => _BuildApplicationsState();
}

class _BuildApplicationsState extends State<BuildApplications> {
  TextStyle style = TextStyle(fontSize: 20,fontFamily: 'Comfort');

  TextStyle style2 = TextStyle(fontSize: 25, fontFamily: 'Comfort');
  TextStyle label = TextStyle(fontSize: 18, fontFamily: 'Comfort');
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text('Build Applications',style: TextStyle(fontSize: 22,color: Colors.black, fontFamily: 'Comfort')),
        centerTitle: true,
        foregroundColor: Colors.black,

      ),
      body: Center(

        child: Stepper(
          type: StepperType.vertical,
          controlsBuilder: (BuildContext context,
              {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: onStepContinue,
                  child: Text(
                    'Next',
                    style: label,
                  ),
                ),
                SizedBox(width: 15,),
                TextButton(
                  onPressed: onStepCancel,
                  child: Text(
                    'Previous',
                    style: label,
                  ),
                ),
              ],
            );
          },
          steps: [
            Step(
              title: Text(
                'Step 1',
                style: style,
              ),
              content: Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Text('Activity and Activity Life Cycle', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://developer.android.com/guide/components/activities/activity-lifecycle';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/android.png'), iconSize: 50,),
                ],
              ),
              isActive: _currentStep >= 0,
              state: _currentStep == 0 ? StepState.indexed : StepState.complete,),
            Step(
              title: Text(
                'Step 2',
                style: style,
              ),
              content: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Build Flexible Interface Using Fragments ', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://developer.android.com/guide/fragments';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/android.png'), iconSize: 50,),
                ],
              ),
              isActive: _currentStep >= 1,
              state: _currentStep == 1 ?
              StepState.indexed : _currentStep < 1 ? StepState.indexed: StepState.complete,
            ),
            Step(
              title: Text(
                'Step 3',
                style: style,
              ),
              content: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Debugging using Android Studio Debugger', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://developer.android.com/studio/debug';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/android.png'), iconSize: 50,),
                ],
              ),
              isActive: _currentStep >= 2,
              state: _currentStep == 2 ?
              StepState.indexed : _currentStep < 2 ? StepState.indexed: StepState.complete,
            ),
            Step(
              title: Text(
                'Step 4',
                style: style,
              ),
              content: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Handling App Configurations', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://developer.android.com/work/managed-configurations';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/android.png'), iconSize: 50,),
                ],
              ),
              isActive: _currentStep >= 3,
              state: _currentStep == 3 ?
              StepState.indexed : _currentStep < 3 ? StepState.indexed: StepState.complete,),
            Step(
              title: Text(
                'Step 5',
                style: style,
              ),
              content: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('3rd Party Libraries', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://dzone.com/articles/android-third-party-libraries-0';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/Info.png'), iconSize: 50,),
                ],
              ),
              isActive: _currentStep >= 4,
              state: _currentStep == 4 ?
              StepState.indexed : _currentStep < 4 ? StepState.indexed: StepState.complete,),
            Step(
              title: Text('Step 6', style: style),
              content: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('See Road Map ', style: style2)),

                ],
              ),
              isActive: _currentStep >= 5,
              state: _currentStep == 5 ? StepState.indexed : StepState.indexed,),
          ],

          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 5) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }
}
