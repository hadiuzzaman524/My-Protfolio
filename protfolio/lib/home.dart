import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './widgets/drawer_layout.dart';
import './widgets/mobile.dart';
import './widgets/desktop.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: [
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          ),
          drawer: size.deviceScreenType == DeviceScreenType.mobile
              ? OpenDrawer()
              : null,
          body: Container(
            child: size.deviceScreenType != DeviceScreenType.mobile
                ? DeskTopAndTabletDesign()
                : MobileDesign(),
          ),
        );
      },
    );
  }
}
