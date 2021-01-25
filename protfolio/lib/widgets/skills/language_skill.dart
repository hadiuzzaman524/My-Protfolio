import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../freamwork_view.dart';
import '../slill_item_card.dart';

class LanguageSkill extends StatelessWidget {
  const LanguageSkill({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return GridView.count(
        crossAxisCount: size.deviceScreenType == DeviceScreenType.desktop
            ? 3
            : size.deviceScreenType == DeviceScreenType.tablet
                ? 2
                : 1,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 4 / 2,

        children: [
          FreamWorkView(
            title: 'C',
            src: 'images/cl64x64.png',
          ),
          FreamWorkView(
            title: 'C++',
            src: 'images/cplus64x64.png',
          ),
          FreamWorkView(
            title: 'Java',
            src: 'images/java64x64.png',
          ),
          FreamWorkView(
            title: 'Dart',
            src: 'images/dart64x64.png',
          ),
          FreamWorkView(
            title: 'Python',
            src: 'images/python64x64.png',
          ),
          FreamWorkView(
            title: 'HTML',
            src: 'images/html64x64.png',
          ),
          FreamWorkView(
            title: 'CSS',
            src: 'images/css64x64.png',
          ),
          FreamWorkView(
            title: 'PHP',
            src: 'images/php64x64.png',
          ),
          FreamWorkView(
            title: 'LaTeX',
            src: 'images/TextfilesLaTeXSourceDocument51264x64.png',
          ),
        ],
      );
    });
  }
}
