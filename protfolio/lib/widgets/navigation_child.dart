import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/widgets/beautiful_button.dart';
import 'menubutton.dart';
import 'social_media_area.dart';

class NavigationChild extends StatefulWidget {
  final Function aboutme;
  final Function education;
  final Function skills;
  final Function project;
  final Function contact;

  NavigationChild(
      {@required this.aboutme,
      @required this.education,
      @required this.skills,
      @required this.contact,
      @required this.project});

  @override
  _NavigationChildState createState() => _NavigationChildState();
}

class _NavigationChildState extends State<NavigationChild> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Container(
          color:Theme.of(context).accentColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.orangeAccent,
                      backgroundImage: AssetImage('images/hadiuzzaman.png'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Md Hadiuzzaman',
                      style: titleStyle,
                    ),
                    Text(
                      "CS Undergrad @BAUST",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    BeautifulButton(
                      name: 'About Me',
                      onClick: widget.aboutme,
                    ),
                    BeautifulButton(
                      name: 'Educations',
                      onClick: widget.education,
                    ),
                    BeautifulButton(name: 'Skill Set', onClick: widget.skills),
                    BeautifulButton(name: 'Projects', onClick: widget.project),
                    BeautifulButton(name: 'Contacts', onClick: widget.contact),
                    SizedBox(
                      height: 40,
                    ),
                    SocialMediaArea(),
                    SizedBox(
                      height: 40,
                    ),

                  ],
                ),
              ),

       /*       Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 5,
                    color: Colors.grey[350],
                  ),

                ],
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
