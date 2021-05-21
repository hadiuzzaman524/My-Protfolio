import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProjectBottomBar extends StatelessWidget {
  final String language;

  const ProjectBottomBar({
    Key key,
    @required this.language,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Diagonal(
            clipHeight: 20.0,
            axis: Axis.vertical,
            position: DiagonalPosition.BOTTOM_LEFT,
            child: Container(
             decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [color3,Theme.of(context).primaryColor],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              width: 150,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Text(
                  language,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
