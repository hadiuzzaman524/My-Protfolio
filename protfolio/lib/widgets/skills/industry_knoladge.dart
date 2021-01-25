import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../freamwork_view.dart';


class IndustryKnoledge extends StatelessWidget {
  const IndustryKnoledge({
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
            title: 'Data Structures',
            src: 'images/ds.jpg',
          ),
          FreamWorkView(
            title: 'Algorithms',
            src: 'images/algo.jpg',
          ),
          FreamWorkView(
            title: 'Problem Solving',
            src: 'images/problemsolving.png',
          ),
        ],
      );
    });
  }
}
