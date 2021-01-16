import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/material.dart';

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
              color: Theme.of(context).primaryColor,
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
