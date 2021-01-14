import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'menubutton.dart';
import 'social_media_area.dart';


class NavigationChild extends StatelessWidget {
  const NavigationChild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/prof.JPG'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hadiuzzaman',
              style: titleStyle,
            ),
            Text('Mobile Application Developer'),
            SizedBox(
              height: 30,
            ),
            MenuButtonItem(
              name: 'About Me',
              onclick: () {},
            ),
            MenuButtonItem(
              name: 'Educations',
              onclick: () {},
            ),
            MenuButtonItem(
              name: 'My Skills',
              onclick: () {},
            ),
            MenuButtonItem(
              name: 'Projects',
              onclick: () {},
            ),
            MenuButtonItem(
              name: 'Contact',
              onclick: () {},
            ),
            SizedBox(
              height: 40,
            ),
            SocialMediaArea(),
          ],
        ),
      ),
    );
  }
}
