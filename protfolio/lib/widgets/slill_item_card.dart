import 'package:flutter/material.dart';
import '../constants.dart';

class SkillItemCard extends StatelessWidget {
  final title;
  SkillItemCard({@required this.title});
  @override
  Widget build(BuildContext context) {
    return    Card(
      margin: EdgeInsets.all(10),
      color: Color(0xffededed),
      elevation: 7,
      child: Center(
        child: Text(
          title,
          style: title2Style,
        ),
      ),
    );
  }
}
