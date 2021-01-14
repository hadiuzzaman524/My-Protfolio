import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'menubutton.dart';
import 'social_media_area.dart';
import 'navigation_child.dart';

class LeftMenuDesign extends StatelessWidget {
  final Function aboutme;
  final Function education;
  final Function skills;
  final Function project;
  final Function contact;

  LeftMenuDesign(
      {@required this.aboutme,
      @required this.education,
      @required this.skills,
      @required this.contact,
      @required this.project});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: NavigationChild(
            project: project,
            aboutme: aboutme,
            education: education,
            skills: skills,
            contact: contact));
  }
}
