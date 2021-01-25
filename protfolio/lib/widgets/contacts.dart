import 'package:clippy_flutter/paralellogram.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatelessWidget {
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

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return Container(
          child: Column(
        children: [
          if(size.deviceScreenType!=DeviceScreenType.mobile)SizedBox(
            height:80,
          ),
          if(size.deviceScreenType!=DeviceScreenType.mobile)Container(
            margin: EdgeInsets.only(left: 100, right: 100),
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
                      'Contact With Me'.toUpperCase(),
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
          ),
          if(size.deviceScreenType!=DeviceScreenType.mobile)SizedBox(
            height: 100,
          ),
          Expanded(
            child: Container(
              margin: size.deviceScreenType == DeviceScreenType.desktop
                  ? EdgeInsets.only(left: 40, right: 40)
                  : null,
              child: GridView.count(
                crossAxisCount:
                    size.deviceScreenType == DeviceScreenType.desktop
                        ? 4
                        : size.deviceScreenType == DeviceScreenType.mobile
                            ? 2
                            : 3,
                shrinkWrap: true,
                childAspectRatio: 4 / 3,
                children: [
                  Column(
                    children: [
                      Image.asset('images/email.png'),
                      FlatButton(
                        child: Text(
                          'hadiuzzaman.cse.bd@gmail.com',
                          style: normalTextStyle,
                        ),
                        onPressed: () {
                          final Uri _emailLaunchUri = Uri(
                              scheme: 'mailto',
                              path: 'hadiuzzaman.cse.bd@gmail.com',
                              queryParameters: {'subject': ''});
                          _openUrl(_emailLaunchUri.toString())
                              .catchError((onError) => print(onError));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/call.png'),
                      FlatButton(
                        child: Text(
                          '+880 1785304677',
                          style: normalTextStyle,
                        ),
                        onPressed: () {
                          final Uri _emailLaunchUri = Uri(
                            scheme: 'tel',
                            path: '01785304677',
                          );
                          _openUrl(_emailLaunchUri.toString())
                              .catchError((onError) => print(onError));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/facebook.png'),
                      FlatButton(
                        child: Text(
                          'Visit My Profile',
                          style: normalTextStyle,
                        ),
                        onPressed: () {
                          _openUrl(
                                  'https://www.facebook.com/jibon.hadiuzzaman/')
                              .catchError((error) => print(error));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/linkedin.png'),
                      FlatButton(
                        child: Text(
                          'Visit My Profile',
                          style: normalTextStyle,
                        ),
                        onPressed: () {
                          _openUrl(
                                  'https://www.linkedin.com/in/md-hadiuzzaman-72613a1a3')
                              .catchError((error) => print(error));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/twitter.png'),
                      FlatButton(
                        child: Text(
                          'Visit My Profile',
                          style: normalTextStyle,
                        ),
                        onPressed: () {
                          //_openUrl('').catchError((error) => print(error));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/github.png'),
                      FlatButton(
                        child: Text(
                          'Visit My Profile',
                          style: normalTextStyle,
                        ),
                        onPressed: () {
                          _openUrl('https://github.com/hadiuzzaman524')
                              .catchError((error) => print(error));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ));
    });
  }
}
