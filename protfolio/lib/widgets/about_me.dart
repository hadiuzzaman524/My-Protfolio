import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage('images/meup.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Md Hadiuzzaman',
              style: titleStyle,
            ),
            Text(
              'Mobile Application Developer & Problem solver',
              style: normalTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset('images/baust64.png'),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    'Student at Bangladesh Army University of Science and Technology.\nNilphamari, Saidpur.',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Diagonal(
              clipHeight: 20.0,
              axis: Axis.vertical,
              position: DiagonalPosition.TOP_RIGHT,
              child: Container(
                color: Theme.of(context).primaryColor,
                width: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'My Goal: ',
                    style: projectTitle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'To work in various national and international software firms or tech giants companies in the world, and grow rapidly with increasing responsibility. ',
              style: normalTextStyle,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
