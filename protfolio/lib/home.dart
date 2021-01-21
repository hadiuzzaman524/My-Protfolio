import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './widgets/drawer_layout.dart';
import './widgets/mobile.dart';
import './widgets/desktop.dart';
import 'package:share/share.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String temp;

  _aboutMe() {
    Navigator.pop(context);
    setState(() {
      temp = 'About Me';
    });
  }

  _education() {
    Navigator.pop(context);
    setState(() {
      temp = 'Educations';
    });
  }

  _skill() {
    Navigator.pop(context);
    setState(() {
      temp = 'Skill Set';
    });
  }

  _project() {
    Navigator.pop(context);
    setState(() {
      temp = 'Projects';
    });
  }

  _contact() {
    Navigator.pop(context);
    setState(() {
      temp = 'Contacts';
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 2,
            actions: [
              IconButton(icon: Icon(Icons.share,color: Colors.white,), onPressed: () {

              }),
            ],
          ),
          drawer: size.deviceScreenType == DeviceScreenType.mobile
              ? OpenDrawer(
                  education: _education,
                  skills: _skill,
                  project: _project,
                  contact: _contact,
                  aboutme: _aboutMe,
                )
              : null,
          body: Column(
            children: [
              Expanded(
                child: Container(
                  //color: Theme.of(context).primaryColor,
                  child: size.deviceScreenType != DeviceScreenType.mobile
                      ? DeskTopAndTabletDesign()
                      : MobileDesign(
                          temp: temp,
                        ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
