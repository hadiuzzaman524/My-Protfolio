import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';


class InformationContainer extends StatelessWidget {
  const InformationContainer({
    Key key,
    @required this.temp,
  }) : super(key: key);

  final String temp;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 80,
            width: MediaQuery.of(context).size.width,
            child:temp!=null? Text(temp,style: titleStyle,):Text(''),
          ),
        ],
      ),
    );
  }
}
