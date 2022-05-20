
import 'package:career_guide/screen/onBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navigation_home_screen.dart';

void main() {
  runApp(MyApp());
 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:  Color(0xFFFAFAFA),
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),

      home: OnBoardingScreen(),

    );
  }







}
