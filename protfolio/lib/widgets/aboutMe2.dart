import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:convert';
import 'dart:html' as html;

class AboutMyself extends StatefulWidget {
  @override
  _AboutMyselfState createState() => _AboutMyselfState();
}

class _AboutMyselfState extends State<AboutMyself>
    with TickerProviderStateMixin {

  void downloadFile(String url){
    html.AnchorElement anchorElement =  new html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (ctx, size) {
      return AnimatedBackground(
        vsync: this,
        behaviour: BubblesBehaviour(),
        child: Container(
            padding: EdgeInsets.all(20),
            child: GridView.count(
              crossAxisCount: !size.isDesktop ? 1 : 2,
              crossAxisSpacing: 20,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: size.isMobile
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.isMobile ? 20 : 0,
                    ),
                    Text(
                      "HI THERE,",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "I'm Md Hadiuzzaman",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      "CS Undergrad @BAUST",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        // color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "To work in various national and international software firms or tech giants companies in the world and grow rapidly with increasing responsibility.",
                    ),
                    SizedBox(height:20,),
                    Container(
                      height: 40.0,
                      margin: EdgeInsets.only(top: 9),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          //https://drive.google.com/uc?export=download&id=1-TD4UXIfhKlC30brcQn1whOMAkRPu6Ui
                          downloadFile("https://drive.google.com/uc?export=download&id=1-TD4UXIfhKlC30brcQn1whOMAkRPu6Ui");
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.deepOrangeAccent, Colors.amberAccent],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints:
                            BoxConstraints(maxWidth: 200.0, minHeight: 40.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Download Resume",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Image.asset("images/hadiuzzaman.png",fit: BoxFit.cover,)
              ],
            )),
      );
    });
  }
}
