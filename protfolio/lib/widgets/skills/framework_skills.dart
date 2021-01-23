import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../freamwork_view.dart';


class FrameWorkSkills extends StatelessWidget {
  const FrameWorkSkills({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return GridView.count(
        crossAxisCount:
        size.deviceScreenType != DeviceScreenType.desktop ? 2 : 3,
        shrinkWrap: true,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 4 / 2,
        children: [
          FreamWorkView(
            title: 'Android',
            src: 'images/and.png',
          ),
          FreamWorkView(
            title: 'Flutter',
            src: 'images/fltr.png',
          ),
          FreamWorkView(
            title: 'Word Press',
            src: 'images/wdp.png',
          ),
          FreamWorkView(
            title: 'JavaFX',
            src: 'images/java64x64.png',
          ),
        ],
      );
    });
  }
}
