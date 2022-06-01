import 'package:flutter/material.dart';


import 'package:url_launcher/url_launcher.dart';

class TypeScript extends StatefulWidget {
  const TypeScript({Key? key}) : super(key: key);

  @override
  _TypeScriptState createState() => _TypeScriptState();
}

class _TypeScriptState extends State<TypeScript> {
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
        title: Text('TypeScript',style: TextStyle(fontSize: 22,color: Colors.black, fontFamily: 'Comfort')),
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
                      child: Text('Learn TypeScript', style: style2)),
                  SizedBox(height: 10,),

                  IconButton(onPressed: () async {
                    const url ='https://www.w3schools.com/typescript/index.php';
                    if (await canLaunch(url)){
                      await launch(url,
                      );
                    } else{
                      throw 'Cant Launch';
                    }
                  }, icon: Image.asset('assets/images/w3Schools.png'), iconSize: 50,),
                ],
              ),
              isActive: _currentStep >= 0,
              state: _currentStep == 0 ? StepState.indexed : StepState.complete,),

            Step(
              title: Text('Step 2', style: style),
              content: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('See Road Map ', style: style2)),

                ],
              ),
              isActive: _currentStep >= 1,
              state: _currentStep == 1 ? StepState.indexed : StepState.indexed,),
          ],

          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 1) {
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
