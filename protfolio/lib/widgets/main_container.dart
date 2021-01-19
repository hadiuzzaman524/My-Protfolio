import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'information_container.dart';

class MainContainerDesign extends StatelessWidget {
final String temp;
MainContainerDesign({@required this.temp});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: InformationContainer(temp: temp),
    );
  }
}
