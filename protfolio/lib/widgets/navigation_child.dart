import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'menubutton.dart';
import 'social_media_area.dart';

class NavigationChild extends StatelessWidget {
  final Function aboutme;
  final Function education;
  final Function skills;
  final Function project;
  final Function contact;

  NavigationChild(
      {@required this.aboutme,
      @required this.education,
      @required this.skills,
      @required this.contact,
      @required this.project});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).accentColor,
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
              'Md Hadiuzzaman',
              style: titleStyle,
            ),
            Text(
              'Mobile Application Developer & Problem Solver',
              style:normalTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            MenuButtonItem(
              name: 'About Me',
              onclick: aboutme,
            ),
            MenuButtonItem(
              name: 'Educations',
              onclick: education,
            ),
            MenuButtonItem(name: 'Skill Set', onclick: skills),
            MenuButtonItem(name: 'Projects', onclick: project),
            MenuButtonItem(name: 'Contacts', onclick: contact),
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
