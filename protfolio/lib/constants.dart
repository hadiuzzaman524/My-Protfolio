import 'package:flutter/material.dart';

const headerTextStyle = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const titleStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
const title2Style = TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.italic,
);
const projectTitle = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  //fontStyle: FontStyle.italic,
);

const normalTextStyle = TextStyle(
  fontSize: 17,
  color: Colors.black,
  fontStyle: FontStyle.italic,
);

const color1 = Colors.deepOrangeAccent;
const color2 = Colors.amber;
const color3=Color(0xff64B6FF);
const color4=Color(0xff374ABE);
const hoverColor=Colors.orangeAccent;

const projectDecoration=BoxDecoration(
  gradient: LinearGradient(
    colors: [color4,color3],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),
);

const headerDecoration=BoxDecoration(
  gradient: LinearGradient(
    colors: [color4,color3,color1,color3,color4],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),
);