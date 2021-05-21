import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import '../constants.dart';

class FreamWorkView extends StatelessWidget {
  final String title;
  final String src;

  FreamWorkView({@required this.title, this.src});

  @override
  Widget build(BuildContext context) {
    return HoverAnimatedContainer(
      hoverColor: hoverColor,
      child: Card(
        margin: EdgeInsets.all(10),
        color: Theme.of(context).accentColor,//#bdd1e0 0xffbaddf8
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
              child: Center(
                child: Text(
                  title,
                  style: title2Style,
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
