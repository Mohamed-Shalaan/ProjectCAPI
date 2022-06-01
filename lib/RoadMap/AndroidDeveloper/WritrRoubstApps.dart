
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RobustApps extends StatefulWidget {
  const RobustApps({Key? key}) : super(key: key);

  @override
  _RobustAppsState createState() => _RobustAppsState();
}

class _RobustAppsState extends State<RobustApps> {
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
        title: Text('Write Robust Apps',style: TextStyle(fontSize: 22,color: Colors.black, fontFamily: 'Comfort')),
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
                      child: Text('Learn Multithreading', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://www.youtube.com/watch?v=UPq1LDxL5_w';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/Info.png'), iconSize: 50,),
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
                      child: Text('Memory Concerns', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://developer.android.com/topic/performance/memory';
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
                      child: Text('How Android Uses Threads Internally', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://academy.realm.io/posts/android-threading-background-tasks/';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/Info.png'), iconSize: 50,),
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
                      child: Text('Security', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://developer.android.com/topic/security/best-practices';
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
                      child: Text('Testing', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://developer.android.com/training/testing/fundamentals';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/android.png'), iconSize: 50,),
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
