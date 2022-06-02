
import 'package:career_guide/Side_Menu/menu_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',

        ),
        centerTitle: true,
        leading: MenuWidget(),
        backgroundColor: Color(0xFFFAFAFA),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '© All Rights Reserved',
              style: TextStyle(
                  color: Colors.grey, fontSize: 15, fontFamily: 'Comfort'),
            )
          ],
        ),
      ),
    );
  }
}
