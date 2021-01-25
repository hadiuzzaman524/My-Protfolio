import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/widgets/project_style/project_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../models/skill_information.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        final item = SkillInformation.projectList;

        return GridView.count(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          shrinkWrap: true,
          crossAxisCount:
              size.deviceScreenType != DeviceScreenType.desktop ? 1 : 2,
          childAspectRatio:
              size.deviceScreenType == DeviceScreenType.mobile ? 4 / 3 : 4 / 2,
          children: [
            for (int i = 0; i < item.length; i++)
              ProjectCard(
                title: item[i].title,
                gitHubLink: item[i].gitHubLink,
                appLogo: item[i].appLogo,
                description: item[i].description,
                technology: item[i].technology,
                playStoreLink: item[i].playStoreLink,
              ),
          ],
        );
      },
    );
  }
}
