import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
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
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Md Hadiuzzaman',
        text: 'Please visit this portfolio',
        linkUrl: 'https://hadiuzzaman524.github.io',
        chooserTitle: 'Share With'
    );
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor:Color(0xff64B6FF), //Theme.of(context).primaryColor,
            elevation: 7,
            actions: [
              IconButton(onPressed: ()async{
                await share().catchError((error){
                  print(error);
                });
              }, icon: Icon(Icons.share),),
              SizedBox(width: 20,),
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
