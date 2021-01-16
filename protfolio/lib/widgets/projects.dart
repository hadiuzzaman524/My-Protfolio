import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/widgets/project_style/project_topbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:protfolio/constants.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size) {
        return GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          shrinkWrap: true,
          crossAxisCount:
              size.deviceScreenType == DeviceScreenType.mobile ? 1 : 2,
          childAspectRatio: 4 / 2,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              child: Card(
                elevation: 6,
                color: Theme.of(context).accentColor,
                child: Column(
                  children: [
                    Expanded(
                      child: ProjectTopBar(
                        title: 'eTutor',
                        gitHubLink: '',
                        playStoreLink: 'hello',
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: Row(
                          children: [],
                        ),
                      ),
                      flex: 8,
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Diagonal(
                              clipHeight: 20.0,
                              axis: Axis.vertical,
                              position: DiagonalPosition.BOTTOM_LEFT,
                              child: Container(
                                color: Theme.of(context).primaryColor,
                                width: 100.0,
                                height: MediaQuery.of(context).size.height,
                                child: Center(
                                  child: Text(
                                    'Java',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            /*   ClipRRect(
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: 60,
                                color: Colors.yellow,
                              ),

                            )*/
                          ],
                        ),
                      ),
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.green,
            ),
          ],
        );
      },
    );
  }
}
