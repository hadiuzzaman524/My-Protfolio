import 'package:clippy_flutter/paralellogram.dart';
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
    return /*Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Center(
          child: Text(
            title,
            style: titleStyle,
          )),
      color: Color(0xffd8ebfa),
    );*/
      Container(
       // margin: EdgeInsets.only(left: 120, right: 120),
        child: Parallelogram(
          cutLength: 15.0,
          edge: Edge.RIGHT,
          child: Container(
            color: Theme.of(context).primaryColor,
            // width: 200.0,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}
