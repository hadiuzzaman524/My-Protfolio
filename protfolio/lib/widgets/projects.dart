import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/widgets/project_style/project_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          shrinkWrap: true,
          crossAxisCount:
              size.deviceScreenType != DeviceScreenType.desktop ? 1 : 2,
          childAspectRatio: 4 / 2,
          children: [
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
          ],
        );
      },
    );
  }
}
