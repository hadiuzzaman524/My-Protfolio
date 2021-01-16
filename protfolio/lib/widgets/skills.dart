import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/widgets/skills/framework_skills.dart';
import 'package:protfolio/widgets/skills/industry_knoladge.dart';
import 'package:protfolio/widgets/skills/language_skill.dart';
import 'package:protfolio/widgets/skills/tools_and_tech.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'header_style.dart';
import 'skills/database.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          title: 'Industry Knowledge',
        ),
        SizedBox(
          height: 20,
        ),
        IndustryKnoledge(),
        SizedBox(
          height: 40,
        ),
        HeaderStyle(
          title: 'Database',
        ),
        SizedBox(
          height: 20,
        ),
        DatabaseInfo(),
        SizedBox(
          height: 40,
        ),
        HeaderStyle(
          title: 'Tools and Technologies',
        ),
        SizedBox(
          height: 20,
        ),
        ToolsAndTechnology(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
