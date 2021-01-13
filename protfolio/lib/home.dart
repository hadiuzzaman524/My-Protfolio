import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import './widgets/drawer_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
          ),
          drawer: size.deviceScreenType == DeviceScreenType.mobile
              ? OpenDrawer()
              : null,
          body:ScreenTypeLayout.builder(
            tablet:(ctx)=> Container(color: Colors.green,),
            mobile: (ctx)=>Container(color: Colors.black,),
            desktop: (ctx)=>Container(color: Colors.red,),
          )
        );
      },
    );
  }
}
