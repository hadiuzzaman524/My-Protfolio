import 'package:flutter/material.dart';
import 'left_menu_item.dart';
import 'main_container.dart';

class DeskTopAndTabletDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LeftMenuDesign(),
     MainContainerDesign(),
      ],
    );
  }
}
