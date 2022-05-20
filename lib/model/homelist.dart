import 'package:flutter/widgets.dart';

import '../fitness_app/fitness_app_home_screen.dart';


class HomeList {
  HomeList({required this.navigateScreen, required this.imagePath});

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = <HomeList>[

    HomeList(
      navigateScreen: const FitnessAppHomeScreen(),
      imagePath: 'assets/fitness_app/fitness_app.png',
    ),

  ];
}
