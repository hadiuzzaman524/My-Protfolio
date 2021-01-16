import 'package:flutter/material.dart';
import 'package:protfolio/widgets/project_style/project_bottombar.dart';
import 'package:protfolio/widgets/project_style/project_topbar.dart';

class ProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Container(
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
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: Image.asset('images/html64x64.png'),
                        // width: 200,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        //  color: Color(0xffededed),
                        padding: EdgeInsets.all(15),
                        child: SingleChildScrollView(
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                      flex: 7,
                    ),
                  ],
                ),
              ),
              flex: 8,
            ),
            Expanded(
              child: ProjectBottomBar(
                language: 'Android',
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
