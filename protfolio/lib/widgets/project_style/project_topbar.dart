import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProjectTopBar extends StatelessWidget {
  final String title;
  final String playStoreLink;
  final String gitHubLink;

  const ProjectTopBar({
    @required this.title,
    @required this.gitHubLink,
    this.playStoreLink,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: Diagonal(
              clipHeight: 20.0,
              axis: Axis.vertical,
              position: DiagonalPosition.TOP_RIGHT,
              child: Container(
                color: Theme.of(context).primaryColor,
                width: 135,
                child: Center(
                  child: Text(
                    'BAUST QB',
                    style: projectTitle,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.add,
                  size: 24,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.ac_unit_sharp,
                  size: 24,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
