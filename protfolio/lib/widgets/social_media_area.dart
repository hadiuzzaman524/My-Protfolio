import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaArea extends StatelessWidget {
  Future<void> _openUrl(String url) async {
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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 45),
                height: 2,
                width: 200,
                color: Colors.orangeAccent//Theme.of(context).primaryColor,
              ),
            ),
            Flexible(
              child: Text(
                'Follow Me On',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(right: 45),
                height: 2,
                width: 200,
                color:Colors.orangeAccent //Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: InkWell(
                  splashColor: Theme.of(context).primaryColor,
                  onTap: () {
                    _openUrl('https://www.facebook.com/jibon.hadiuzzaman/').catchError((error) => print(error));
                  },
                  child: Image.asset(
                    'images/facebook.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: InkWell(
                  splashColor: Theme.of(context).primaryColor,
                  onTap: () {
                    //_openUrl('').catchError((error) => print(error));
                  },
                  child: Image.asset(
                    'images/twitter.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: InkWell(
                  splashColor: Theme.of(context).primaryColor,
                  onTap: () {
                    _openUrl('https://github.com/hadiuzzaman524').catchError((error) => print(error));
                  },
                  child: Image.asset(
                    'images/github.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: InkWell(
                  splashColor: Theme.of(context).primaryColor,
                  onTap: () {
                    _openUrl('https://www.linkedin.com/in/md-hadiuzzaman-72613a1a3').catchError((error) => print(error));
                  },
                  child: Image.asset(
                    'images/linkedin.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
