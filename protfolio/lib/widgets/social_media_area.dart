import 'package:flutter/material.dart';

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
                height: 1,
                width: 200,
                color: Colors.black,
              ),
            ),
            Flexible(
              child: Text(
                'Social Media',
                style: TextStyle(

                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only( right: 45),
                height: 1,
                width: 200,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 25, horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    'images/facebook.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    'images/twitter.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    'images/github.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: FlatButton(
                  onPressed: () {},
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
