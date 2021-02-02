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
            TitleDesign(
              title: "My Goal",
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
              height: 50,
            ),
            TitleDesign(
              title: "Achievement",
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1. Semister wise tuition fee Waiver and Scholarship:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              "   Got 1st Place in Fall-2018",
              style: normalTextStyle,
              textAlign: TextAlign.justify,
            ),
            Text(
              "   Got 1st Place in Fall-2018",
              style: normalTextStyle,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "2. Board Scholarship for Secondary School Certificate:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              "   Got 45th Place in Dinajpur Board, 2015",
              style: normalTextStyle,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3. Attend On ACM ICPC Preliminary Round:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              "   Team name: BAUST_CodeX, 2019",
              style: normalTextStyle,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "4. Attend On Intra University Contest:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              "   Got 2nd Place in Team Forming Contest, 2019",
              style: normalTextStyle,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class TitleDesign extends StatelessWidget {
  final String title;

  const TitleDesign({
    @required this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Diagonal(
      clipHeight: 20.0,
      axis: Axis.vertical,
      position: DiagonalPosition.TOP_RIGHT,
      child: Container(
        color: Theme.of(context).primaryColor,
        width: 160,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${title} : ',
            style: projectTitle,
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
