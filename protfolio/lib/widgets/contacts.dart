import 'package:clippy_flutter/paralellogram.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Container(
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
        SizedBox(
          height: 100,
        ),
        Expanded(
          child: ResponsiveBuilder(builder: (context, size) {
            return Container(
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
                        onPressed: () {},
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
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/facebook.png'),
                      FlatButton(
                        child: Text(
                          'Follow Me',
                          style: normalTextStyle,
                        ),
                        onPressed: () {},
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
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/twitter.png'),
                      FlatButton(
                        child: Text(
                          'Follow Me',
                          style: normalTextStyle,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('images/github.png'),
                      FlatButton(
                        child: Text(
                          'Follow Me',
                          style: normalTextStyle,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ],
    ));
  }
}
