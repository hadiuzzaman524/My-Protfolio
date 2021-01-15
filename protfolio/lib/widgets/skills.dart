import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/widgets/skills/framework_skills.dart';
import 'package:protfolio/widgets/skills/language_skill.dart';
import 'package:protfolio/widgets/skills/tools_and_tech.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'header_style.dart';
import 'slill_item_card.dart';
import 'freamwork_view.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return ListView(
        children: [
          HeaderStyle(
            title: 'Language',
          ),
          SizedBox(
            height: 20,
          ),
          LanguageSkill(),
          SizedBox(
            height: 40,
          ),
          HeaderStyle(
            title: 'Frame Work',
          ),
          SizedBox(
            height: 20,
          ),
          FrameWorkSkills(),
          SizedBox(
            height: 40,
          ),
          HeaderStyle(
            title: 'Tools and Technologies',
          ),
          SizedBox(
            height:20,
          ),
          ToolsAndTechnology(),
          SizedBox(
            height: 40,
          ),
        ],
      );
    });
  }
}
