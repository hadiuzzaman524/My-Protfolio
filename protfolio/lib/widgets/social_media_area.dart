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
                margin: EdgeInsets.only(left:20, right: 10),
                height: 2,
                width: 200,
                color: Colors.black,
              ),
            ),
            Flexible(
              child: Text('Social Media',style: TextStyle(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 20),
                height: 2,
                width: 200,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 25,horizontal:40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
              Flexible(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
