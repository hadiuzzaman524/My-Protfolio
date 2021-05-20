import 'package:flutter/material.dart';

class BeautifulButton extends StatelessWidget {
  final String name;
  final Function onClick;
  BeautifulButton({@required this.name, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 40.0,
      margin: EdgeInsets.only(top: 10),
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: onClick,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [ Color(0xff64B6FF),Color(0xff374ABE),Color(0xff64B6FF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints:
            BoxConstraints(maxWidth: 350, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
