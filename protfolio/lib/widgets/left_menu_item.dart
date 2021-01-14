import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'menubutton.dart';
import 'social_media_area.dart';
import 'navigation_child.dart';

class LeftMenuDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: NavigationChild(),
    );
  }
}
