import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'header_style.dart';
import 'slill_item_card.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, size) {
      return ListView(
        children: [
          HeaderStyle(
            title: 'Language',
          ),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount:
                size.deviceScreenType == DeviceScreenType.mobile ? 2 : 3,
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 2,
            children: [
              SkillItemCard(
                title: 'C',
              ),
              SkillItemCard(
                title: 'C++',
              ),
              SkillItemCard(
                title: 'Java',
              ),
              SkillItemCard(
                title: 'HTML',
              ),
              SkillItemCard(
                title: 'CSS',
              ),
              SkillItemCard(
                title: 'PHP',
              ),
              SkillItemCard(
                title: 'Python',
              ),
              SkillItemCard(
                title: 'Dart',
              ),
            ],
          ),
          SizedBox(height: 10,),
          HeaderStyle(
            title: 'Frame Work',
          ),
          SizedBox(height: 10,),
          GridView.count(
            crossAxisCount:
            size.deviceScreenType == DeviceScreenType.mobile ? 2 : 3,
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 2,
            children: [
              SkillItemCard(
                title: 'Android',
              ),
              SkillItemCard(
                title: 'Flutter',
              ),
              SkillItemCard(
                title: 'Word Press',
              ),
              SkillItemCard(
                title: 'Java FX',
              ),

            ],
          ),

          HeaderStyle(
            title: 'Tools and Technologies',
          ),
          SizedBox(height: 10,),
          GridView.count(
            crossAxisCount:
            size.deviceScreenType == DeviceScreenType.mobile ? 2 : 3,
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 2,
            children: [
              SkillItemCard(
                title: 'CodeBlocks',
              ),
              SkillItemCard(
                title: 'DEVC++',
              ),
              SkillItemCard(
                title: 'Android Studio',
              ),
              SkillItemCard(
                title: 'TexStudio',
              ),
              SkillItemCard(
                title: 'Adobe XD',
              ),
              SkillItemCard(
                title: 'Git',
              ),
              SkillItemCard(
                title: 'MS Word',
              ),
              SkillItemCard(
                title: 'MS PowerPoint',
              ),
            ],
          ),
        ],
      );
    });
  }
}
