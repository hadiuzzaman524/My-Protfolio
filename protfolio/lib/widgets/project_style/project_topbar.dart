import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class ProjectTopBar extends StatelessWidget {
  final String title;
  final playStoreLink;
  final String gitHubLink;

  const ProjectTopBar({
    @required this.title,
    @required this.gitHubLink,
    @required this.playStoreLink,
    Key key,
  }) : super(key: key);

  Future<void> _openWithPlayStore(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _openWithGitHub(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        //headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

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
                //color: Theme.of(context).primaryColor,
                decoration: projectDecoration,
                width: 220,
                child: Center(
                  child: Text(
                    title,
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
                if (gitHubLink != null)
                  InkWell(
                    child: Image.asset('images/git24.png'),
                    onTap: () {
                      _openWithGitHub(gitHubLink)
                          .catchError((error) => print(error));
                    },
                  ),
                SizedBox(
                  width: 20,
                ),
                if (playStoreLink != null)
                  InkWell(
                      child: Image.asset('images/play.png'),
                      onTap: () {
                        _openWithPlayStore(playStoreLink)
                            .catchError((error) => print(error));
                      }),
                SizedBox(
                  width: gitHubLink == null ? 28 : 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
