import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';

class MainContainerDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              width: MediaQuery.of(context).size.width,
             child: Text('About Me',style: titleStyle,),
            ),
          ],
        ),
      ),
    );
  }
}
