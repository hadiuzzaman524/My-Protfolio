import 'package:flutter/material.dart';

class DeskTopAndTabletDesign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.green,
            child: Column(
              children: [],
            ),
          ),
        ),

        Expanded(
          flex: 7,
          child: Container(
            color: Colors.red,
            child: Column(
              children: [],
            ),
          ),
        ),
      ],
    );
  }
}
