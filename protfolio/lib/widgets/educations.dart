import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:protfolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Educations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return GridView.count(
          childAspectRatio:
              size.deviceScreenType == DeviceScreenType.desktop ? 5 / 3 : size.deviceScreenType == DeviceScreenType.mobile ?4/3:4 / 2,
          shrinkWrap: true,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount:
              size.deviceScreenType != DeviceScreenType.desktop ? 1 : 2,
          children: [
            EducationCard(
              title: 'Bachelor Of Science in Engineering.',
              institute:
                  'Bangladesh Army University of Science & Technology, Saidpur.',
              board: null,
              gpa: '3.74 Out of 4.0',
              imageUrl: 'images/baust80x80.png',
              passingYear: ' Continious(3rd year)',
              isUniversity: true,
              shortFromofDegree: 'B.Sc',
            ),
            EducationCard(
              title: 'Higher Secondary Certificate',
              institute: 'Cantonment Public School & College, Rangpur.',
              board: 'Dinajpur',
              gpa: '5.0 Out of 5.0',
              imageUrl: 'images/cpscr.png',
              passingYear: '2017',
              isUniversity: false,
              shortFromofDegree: 'H.S.C',
            ),
            EducationCard(
              title: 'Secondary School Certificate',
              institute: 'Bir Uttam Shaheed Samad School & College, Rangpur.',
              board: 'Dinajpur',
              gpa: '5.0 Out of 5.0',
              imageUrl: 'images/bussh.png',
              passingYear: '2015',
              isUniversity: false,
              shortFromofDegree: 'S.S.C',
            ),
            EducationCard(
              title: 'Junior School Certificate',
              institute: 'Bir Uttam Shaheed Samad School & College, Rangpur.',
              board: 'Dinajpur',
              gpa: '5.0 Out of 5.0',
              imageUrl: 'images/bussh.png',
              passingYear: '2012',
              isUniversity: false,
              shortFromofDegree: 'J.S.C',
            ),
          ],
        );
      },
    );
  }
}

class EducationCard extends StatelessWidget {
  final String title;
  final String institute;
  final String passingYear;
  final String gpa;
  final String board;
  final String imageUrl;
  final bool isUniversity;
  final String shortFromofDegree;

  const EducationCard({
    @required this.title,
    @required this.institute,
    @required this.board,
    @required this.gpa,
    @required this.imageUrl,
    @required this.passingYear,
    @required this.isUniversity,
    @required this.shortFromofDegree,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverAnimatedContainer(
      hoverColor: hoverColor,
      child: Card(
        elevation: 7,
        margin: EdgeInsets.all(10),
        color: Theme.of(context).accentColor,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Image.asset(imageUrl),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                institute,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Passing Year:  $passingYear',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              isUniversity
                                  ? Text(
                                      'C.G.P.A:  $gpa',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black,
                                      ),
                                    )
                                  : Text(
                                      'G.P.A:  $gpa',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                              SizedBox(
                                height: 10,
                              ),
                              board != null
                                  ? Text(
                                      'Board:  $board',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.black,
                                      ),
                                    )
                                  : Text(''),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Diagonal(
                    clipHeight: 20.0,
                    axis: Axis.vertical,
                    position: DiagonalPosition.BOTTOM_LEFT,
                    child: Container(
                     // color: Theme.of(context).primaryColor,
                      decoration: projectDecoration,
                      width: 80,
                      height: MediaQuery.of(context).size.height,
                      child: Center(
                        child: Text(
                          shortFromofDegree,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
