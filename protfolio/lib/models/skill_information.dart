import 'package:flutter/material.dart';

class Project {
  final String title;
  final String gitHubLink;
  final String playStoreLink;
  final String appLogo;
  final String description;
  final String technology;

  Project(
      {@required this.title,
      @required this.gitHubLink,
      @required this.appLogo,
      @required this.description,
      @required this.technology,
      @required this.playStoreLink});
}

class SkillInformation {
  static List<Project> projectList = [
    Project(
        title: 'eTutor',
        gitHubLink: null,
        appLogo: 'images/androidstudio.png',
        description:
            """This app is mainly for students and teachers who are seeking private tuition or interested to provide. Here, students can find suitable teachers with their expected salary and teachers can find students who are interested in private tuition.

Features
1. Students will find a list of teachers across the country and their qualifications, contact number, expected salary, subjects interested to teach with interested class. Also, students can post their requirements.
2. Teachers will also find students, their requirements, and salary interested to pay.
3. All the books of the national curriculum are available in pdf format and useful video tutorials are linked up in this app.
4. You can also see the all education board result using this application.""",
        //  "For those who are interested to find a home tutor around them or teach privately This app is mainly for students and teachers who are seeking private tuition or interested to provide. Here, students can find suitable teachers with their expected salary and teachers can find students who are interested in private tuition.Feature 1. Students will find a list of teachers across the country and their qualifications, contact number, expected salary, subjects interested to teach with interested class. Also, students can post their requirements 2. Teachers will also find students, their requirements, and salary interested to pay 3. All the books of the national curriculum are available in pdf format and useful video tutorials are linked up in this app. 4. You can also see the all education board result using this application.",
        technology: 'Android',
        playStoreLink:
            'https://play.google.com/store/apps/details?id=com.nested.etutor'),
    Project(
        title: 'Weekly Expense List',
        gitHubLink: 'https://github.com/hadiuzzaman524/Weekly-Expense-List',
        appLogo: 'images/flutter.png',
        description:
            """With the help of this application, you can easily predict your daily and weekly expenses. This application will show you a weekly expenses chart, to accept that you need to enter data when you can spend. For building this application I need help from the Maximilian Schwarzmüller Flutter development tutorial.""",
        technology: "Flutter",
        playStoreLink: null),
    Project(
        title: 'BMI Calculator',
        gitHubLink: 'https://github.com/hadiuzzaman524/BMI-Calculator',
        appLogo: 'images/flutter.png',
        description:
            """This is a Flutter application that works on both Android and IOS. Using this application you can predict your BMI and also gives you a suggestion for your good health.""",
        technology: "Flutter",
        playStoreLink: null),
    Project(
        title: 'TODO List',
        gitHubLink: 'https://github.com/hadiuzzaman524/TODO-List',
        appLogo: 'images/flutter.png',
        description:
            """This is flutter application works on both Android and IOS. Using this application you can easily maintain your TODO. You can add tasks, delete tasks, and so on with beautiful UI.""",
        technology: "Flutter",
        playStoreLink: null),
    Project(
        title: 'Scientific Calculator',
        gitHubLink: 'https://github.com/hadiuzzaman524/ScientificCalculator',
        appLogo: 'images/and.png',
        description:
            """It's a very simple calculator application. In this application you can calculate simple math problem like addition, subtraction, multiplication, division. Also calculate simple scientific calculation when you need value of trigonometic. Here also included age calculator.Using this application you can easily calculate your age with your birthday.""",
        technology: "Android",
        playStoreLink: null),
    Project(
        title: 'A text editor',
        gitHubLink:
            'https://github.com/hadiuzzaman524/MY_project_list/tree/master/My_notepad',
        appLogo: 'images/java64x64.png',
        description:
            """This is a simple Text editor application for windows pc. I am tried to build it using JavaFX. Using this text editor you can easily edit your text, save in your local space, open an existing file, and so on.""",
        technology: "Java FX",
        playStoreLink: null),
    Project(
        title: 'Simple calculator',
        gitHubLink:
            'https://github.com/hadiuzzaman524/MY_project_list/tree/master/Simple_calculator',
        appLogo: 'images/java64x64.png',
        description:
            """This is a simple calculator for windows pc. Using this calculator you can predict simple addition, subtraction division, and multiplication. To build this application I can use JavaFX.""",
        technology: 'JavaFX',
        playStoreLink: null),
    Project(
        title: 'Teacher finder',
        gitHubLink: 'https://github.com/hadiuzzaman524/Teacher-finder-with-C',
        appLogo: 'images/cl64x64.png',
        description:
            """This is a simple project for finding a teacher nearest to you. In this project, I can build it depend on the file system. when a teacher registered for getting a tuition his/her information store in a simple .txt file and when a student can find the teacher then retrieve the information and showing it to get a private tutor.""",
        technology: 'C',
        playStoreLink: null),
  ];
}
