import 'package:flutter/material.dart';
import 'left_menu_item.dart';
import 'main_container.dart';

class DeskTopAndTabletDesign extends StatefulWidget {
  @override
  _DeskTopAndTabletDesignState createState() => _DeskTopAndTabletDesignState();
}

class _DeskTopAndTabletDesignState extends State<DeskTopAndTabletDesign> {
  String temp;

  _aboutMe() {
    setState(() {
      temp = 'About Me';
    });
  }

  _education() {
    setState(() {
      temp = 'Educations';
    });
  }

  _skill() {
    setState(() {
      temp = 'Skill Set';
    });
  }

  _project() {
    setState(() {
      temp = 'Projects';
    });
  }

  _contact() {
    setState(() {
      temp = 'Contacts';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        LeftMenuDesign(
          aboutme: _aboutMe,
          education: _education,
          skills: _skill,
          project: _project,
          contact: _contact,
        ),
        MainContainerDesign(temp: temp,),
      ],
    );
  }
}
