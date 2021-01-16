import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProjectTopBar extends StatelessWidget {
  final String title;
  final playStoreLink;
  final String gitHubLink;

  const ProjectTopBar({
    @required this.title,
    @required this.gitHubLink,
    this.playStoreLink,
    Key key,
  }) : super(key: key);

  _openWithPlayStore(String url) {}

  _openWithGitHub(String url) {}

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
                width: 180,
                child: Center(
                  child: Text(
                    'BMI Calculator',
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
                InkWell(
                  child: Image.asset('images/git24.png'),
                  onTap: () {
                    _openWithGitHub(gitHubLink);
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                if (playStoreLink != null)
                  InkWell(
                      child: Image.asset('images/play.png'),
                      onTap: () {
                        _openWithPlayStore(playStoreLink);
                      }),
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
