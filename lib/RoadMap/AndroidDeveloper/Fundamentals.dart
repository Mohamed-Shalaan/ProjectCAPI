
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Fundamentals extends StatefulWidget {
  const Fundamentals({Key? key}) : super(key: key);

  @override
  _FundamentalsState createState() => _FundamentalsState();
}

class _FundamentalsState extends State<Fundamentals> {
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
        title: Text('Fundamentals',style: TextStyle(fontSize: 22,color: Colors.black, fontFamily: 'Comfort')),
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
                        child: Text('Install Android Studio', style: style2)),
                    SizedBox(height: 10,),

                    IconButton(onPressed: () async {
                      const url ='https://developer.android.com/studio';
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
                        child: Text('Learn Basics of Kotlin', style: style2)),
                    SizedBox(height: 10,),

                    IconButton(onPressed: () async {
                      const url ='https://kotlinlang.org/docs/home.html';
                      if (await canLaunch(url)){
                        await launch(url,
                        );
                      } else{
                        throw 'Cant Launch';
                      }
                    }, icon: Image.asset('assets/images/kotlin.png'), iconSize: 50,),
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
                        child: Text('Basics of OOP', style: style2)),
                    SizedBox(height: 10,),

                    IconButton(onPressed: () async {
                      const url ='https://www.w3schools.com/java/java_oop.asp';
                      if (await canLaunch(url)){
                        await launch(url,
                        );
                      } else{
                        throw 'Cant Launch';
                      }
                    }, icon: Image.asset('assets/images/w3Schools.png'), iconSize: 50,),
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
                        child: Text('Data Structure& Algorithms', style: style2)),
                    SizedBox(height: 10,),

                    IconButton(onPressed: () async {
                      const url ='https://www.tutorialspoint.com/data_structures_algorithms/index.htm';
                      if (await canLaunch(url)){
                        await launch(url,
                        );
                      } else{
                        throw 'Cant Launch';
                      }
                    }, icon: Image.asset('assets/images/tutorials.png'), iconSize: 50,),
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
                        child: Text('How To Use Gradle', style: style2)),
                    SizedBox(height: 10,),

                    IconButton(onPressed: () async {
                      const url ='https://docs.gradle.org/current/userguide/getting_started.html';
                      if (await canLaunch(url)){
                        await launch(url,
                        );
                      } else{
                        throw 'Cant Launch';
                      }
                    }, icon: Image.asset('assets/images/gradle.png'), iconSize: 50,),
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
