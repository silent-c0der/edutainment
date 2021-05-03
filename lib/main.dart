
import 'package:flutter/material.dart';
import 'screens/log_in/page.dart';
import 'screens/sign_up/page.dart';
import 'screens/menu_1/page.dart';
import 'screens/home/page.dart';
import 'utils/constants.dart';
import 'screens/score_page/page.dart';

import 'screens/testing_screen/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kProjectName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //initialRoute: PageMenu1.getPageName(),
      initialRoute: PageScore.getPageName(),
      routes: {
        PageMenu1.getPageName(): (context) => PageMenu1(),
        PageSignUp.getPageName(): (context) => PageSignUp(),
        PageLogIn.getPageName(): (context) => PageLogIn(),
        PageHome.getPageName(): (context) => PageHome(),
        PageScore.getPageName(): (context) => PageScore(),

        TestingPage.getPageName(): (context) =>
            TestingPage(), // To delete after
      },
    );
  }
}