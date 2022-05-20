import 'package:career_guide/screen/LogInPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';




class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
      child: IntroductionScreen(
        showSkipButton: true,
        showNextButton: true,
        skip: const Text('Skip', style: TextStyle(color: Colors.blue, fontSize: 18, fontFamily: 'Comfortaa'),),
        next: const Icon(Icons.arrow_forward),
        done: const Text("Done", style: TextStyle(color: Colors.blue, fontSize: 18, fontFamily: 'Comfortaa')),
        dotsDecorator: DotsDecorator(
            size: const Size.square(8),
            activeSize: const Size(14, 8),
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),

        onDone: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LogIn()),
          );
        },
        pages: [
          PageViewModel(
            title: 'Know Yourself, your Skills',
            body: 'Start By Taking MBTI Test',
            image: introImage('assets/images/mb.png'),
            decoration: getDecoration(),
          ),
          PageViewModel(
            title: 'Choose Your Track',
            body: 'Select The Proper Track Based on Your Personality and Skills',
            image: introImage('assets/images/follow.png'),
            decoration:  getDecoration(),
          ),
          PageViewModel(
            title: 'Start Learning',
            body: 'Follow The Path to your Track According to Your Roadmap',
            image: introImage('assets/images/road.png'),
            decoration: getDecoration(),
          ),
          PageViewModel(
            title: 'Join Different Communities',
            body: 'Get in Touch With People has the Same Interest',
            image: introImage('assets/images/social.png'),
            decoration: getDecoration(),
          ),
        ],
      ),
  );

  PageDecoration getDecoration()=> PageDecoration(
    titleTextStyle: TextStyle( fontSize: 35,fontWeight: FontWeight.bold , fontFamily: 'Comfortaa'),
    bodyTextStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.w500, fontFamily: 'Comfortaa'),
    descriptionPadding: EdgeInsets.fromLTRB(10, 0.0, 20, 10),

  );

  Widget introImage(String assetName) {
    //widget to show intro image
    return Center(
      child:  Image.asset('$assetName', width: 600,),
    );
  }


}
