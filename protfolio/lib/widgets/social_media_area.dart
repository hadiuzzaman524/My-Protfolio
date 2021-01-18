import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';

class SocialMediaArea extends StatelessWidget {
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
                color: Theme.of(context).primaryColor,
              ),
            ),
            Flexible(
              child: Text(
                'Follow Me On',
                style: normalTextStyle,
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(right: 45),
                height: 2,
                width: 200,
                color: Theme.of(context).primaryColor,
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
                  onTap: () {},
                  child: Image.asset(
                    'images/facebook.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: InkWell(
                  splashColor: Theme.of(context).primaryColor,
                  onTap: () {},
                  child: Image.asset(
                    'images/twitter.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: InkWell(
                  splashColor: Theme.of(context).primaryColor,
                  onTap: () {},
                  child: Image.asset(
                    'images/github.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: InkWell(
                  splashColor: Theme.of(context).primaryColor,
                  onTap: () {},
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
