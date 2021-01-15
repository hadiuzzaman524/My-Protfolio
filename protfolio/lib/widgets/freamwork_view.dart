import 'dart:ui';

import 'package:flutter/material.dart';
import '../constants.dart';

class FreamWorkView extends StatelessWidget {
  final String title;
  final String src;

  FreamWorkView({@required this.title, this.src});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Color(0xffd8ebfa),//#bdd1e0 0xffbaddf8
      elevation:8,
      child: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Image.asset(
              src,
            ),
          )),
          Expanded(
            child: Text(
              title,
              style: title2Style,
            ),
          ),
        ],
      ),
    );
  }
}
