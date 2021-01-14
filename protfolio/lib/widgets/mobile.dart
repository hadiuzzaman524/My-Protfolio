import 'package:flutter/material.dart';
import 'package:protfolio/widgets/information_container.dart';
import 'package:protfolio/widgets/main_container.dart';

class MobileDesign extends StatelessWidget {
  final String temp;

  MobileDesign({this.temp});

  @override
  Widget build(BuildContext context) {
    print(temp);
    return InformationContainer(temp: temp);
  }
}
