import 'package:flutter/material.dart';
import 'package:protfolio/widgets/left_menu_item.dart';
import 'navigation_child.dart';

class OpenDrawer extends StatelessWidget {

  final Function aboutme;
  final Function education;
  final Function skills;
  final Function project;
  final Function contact;

  OpenDrawer(
      {@required this.aboutme,
        @required this.education,
        @required this.skills,
        @required this.contact,
        @required this.project});

  @override
  Widget build(BuildContext context) {
    return NavigationChild(
      education: education,
      aboutme: aboutme,
      skills: skills,
      contact: contact,
      project: project,
    );
  }
}
