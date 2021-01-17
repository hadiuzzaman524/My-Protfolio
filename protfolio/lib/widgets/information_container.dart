import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'about_me.dart';
import 'skills.dart';
import 'educations.dart';
import 'projects.dart';
import 'contacts.dart';

class InformationContainer extends StatelessWidget {
  const InformationContainer({
    Key key,
    @required this.temp,
  }) : super(key: key);

  final String temp;

  @override
  Widget build(BuildContext context) {

    return Container(
     // elevation: 2,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 55,
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: temp != null
                ? Text(
                    temp,
                    style: headerTextStyle,
                  )
                : Text(''),
          ),
          if (temp != null)
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height-(55+64),
                width: MediaQuery.of(context).size.width,
                child: temp.contains('About Me')
                    ? AboutMe()
                    : temp.contains('Educations')
                        ? Educations()
                        : temp.contains('Skill Set')
                            ? Skills()
                            : temp.contains('Projects')
                                ? Projects()
                                : temp.contains('Contact')
                                    ? Contacts()
                                    : Container(), //default design
              ),
            )
          else
            Container() // default design
        ],
      ),
    );
  }
}
