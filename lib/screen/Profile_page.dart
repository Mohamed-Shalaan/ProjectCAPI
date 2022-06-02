
import 'package:career_guide/Side_Menu/menu_item.dart';
import 'package:career_guide/Side_Menu/menu_page.dart';
import 'package:career_guide/fitness_app/fitness_app_home_screen.dart';
import 'package:career_guide/screen/Settings_Screen.dart';
import 'package:career_guide/screen/aboutUs_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';


TextStyle s6= TextStyle(fontSize: 15, fontFamily: 'Comfort');
TextStyle pages =TextStyle(fontFamily: 'Comfort', fontSize: 22, color: Colors.black);


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MenuItem currentItem = MenuItems.profile;

  @override
  Widget build(BuildContext context) => ZoomDrawer(
    style: DrawerStyle.Style1,
    menuScreen: MenuPage( currentItem: currentItem,
      onSelectedItem: (item){
        setState(() => currentItem=item);
      },
    ),
    mainScreen: getScreen(),
    borderRadius: 30,
    showShadow: true,
    angle: 0.0,
    backgroundColor: Colors.white30,
    slideWidth: MediaQuery.of(context).size.width*.58,
  );


  Widget getScreen(){
    switch (currentItem){
      case MenuItems.profile:
        return FitnessAppHomeScreen();
      case MenuItems.aboutUs:
        return AboutUsPage() ;
      case MenuItems.Settings:
        return SettingsPage();
      default:
        return FitnessAppHomeScreen();
    }
  }
}




