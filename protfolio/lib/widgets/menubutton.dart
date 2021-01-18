import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MenuButtonItem extends StatelessWidget {
  final Function onclick;
  final String name;

  MenuButtonItem({@required this.onclick, @required this.name});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return Card(
        elevation: 7,
        color: Theme.of(context).primaryColor,
        margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal:
                size.deviceScreenType == DeviceScreenType.tablet ? 20 : 45),
        child: FlatButton(
          onPressed: onclick,
          child: Container(
            height: 40,
            padding: EdgeInsets.symmetric(vertical: 5),
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
