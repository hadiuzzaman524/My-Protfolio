import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';


class HeaderStyle extends StatelessWidget {
  final String title;

  const HeaderStyle({
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Center(
          child: Text(
            title,
            style: titleStyle,
          )),
      color: Color(0xffd8ebfa),
    );
  }
}
