import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../freamwork_view.dart';


class DatabaseInfo extends StatelessWidget {
  const DatabaseInfo({
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
            title: 'MySQL',
            src: 'images/sql.png',
          ),
          FreamWorkView(
            title: 'Firebase',
            src: 'images/firebase64x64.png',
          ),

        ],
      );
    });
  }
}

