import 'package:flutter/material.dart';


class MenuButtonItem extends StatelessWidget {

  final Function onclick;
  final String name;
  MenuButtonItem({@required this.onclick,@required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Theme.of(context).primaryColor,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 45),
      child: FlatButton(
        onPressed: onclick,
        child: Container(
          height: 35,
          padding: EdgeInsets.symmetric(vertical: 5),
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(name,style: TextStyle(color: Colors.white,fontSize: 17),),
          ),
        ),
      ),
    );
  }
}
