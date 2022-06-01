
import 'package:career_guide/Side_Menu/menu_item.dart';
import 'package:career_guide/screen/LogInPage.dart';
import 'package:flutter/material.dart';


TextStyle s5 = TextStyle(
  fontSize: 22,
  fontFamily: 'Comfort',
);

TextStyle logout = TextStyle(
  fontSize: 20,
  fontFamily: 'Comfort',
);
TextStyle button =
    TextStyle(fontSize: 18, fontFamily: 'Comfort', color: Colors.indigo);

class MenuItems {
  static const profile = MenuItem('Profile', Icons.person);
  static const Settings = MenuItem('Settings', Icons.settings);
  static const aboutUs = MenuItem('About Us', Icons.info);

  static const all = <MenuItem>[
    profile,
    Settings,
    aboutUs,
  ];
}

class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Theme(
        data: ThemeData.dark(),
        child:
        Scaffold(
          backgroundColor: Colors.indigo,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/Faysal.png'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Hello' + ' Faysal',
                    style: s5,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ...MenuItems.all.map(buildMenuItem).toList(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: TextButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        backgroundColor: Color(0xFFFAFAFA),
                        title: Text(
                          'Logging Out' '\n',
                          style: logout,
                          textAlign: TextAlign.center,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        content: Text('Are You Sure?',
                            style: logout, textAlign: TextAlign.center),
                        actions: <Widget>[
                          Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogIn()),
                                  ),
                                  child: Text('Yes',
                                      style: button,
                                      textAlign: TextAlign.start),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LogIn()),
                                  ),
                                  child: Text(
                                    'No',
                                    style: button,
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Text(
                        'Logout',
                        style: s5,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        onSurface: Colors.red,
                        side: BorderSide(color: Colors.white, width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        )),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItem(MenuItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(
            item.icon,
            size: 23,
          ),
          title: Text(
            item.title,
            style: s5,
          ),
          onTap: () => onSelectedItem(item),
        ),
      );
}
