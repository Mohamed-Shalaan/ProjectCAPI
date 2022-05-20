import 'package:flutter/material.dart';

class MealsListData {
  MealsListData({
    required this.meals,
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = Colors.grey,
    this.endColor = Colors.grey,
    this.kcal = "",
  });

  String imagePath;
  String titleTxt;
  Color startColor;
  Color endColor;
  List<String> meals;
  String kcal;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/images/java.png',
      titleTxt: 'JAVA',
      kcal: 'Explore',
      meals: <String>['OOP,', 'Lists, Loops', 'Advanced'],
      startColor: const Color(0xFF40D8FF),
      endColor: const Color(0xFF0990B3),
    ),
    MealsListData(
      imagePath: 'assets/images/kotlin.png',
      titleTxt: 'KOTLIN',
      kcal: 'Explore',
      meals: <String>['Basic,', 'Intermediate', 'Advanced'],
      startColor: const Color(0xFF738AE6),
      endColor: const Color(0xFF5C5EDD),
    ),
    MealsListData(
      imagePath: 'assets/images/api.png',
      titleTxt: 'APIs',
      kcal: 'Explore',
      meals: <String>['Design', 'Security','Gateways'],
      startColor: const Color(0xFFFE95B6),
      endColor: const Color(0xFFFF5287),
    ),
  ];
}
