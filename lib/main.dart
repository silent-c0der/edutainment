import 'package:flutter/material.dart';
import 'screens/log_in/page.dart';
import 'screens/sign_up/page.dart';
import 'screens/menu_1/page.dart';
import 'utils/constants.dart';

//main fonction

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kProjetName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: PageMenu1.getPageName(),
      routes: {
        PageMenu1.getPageName(): (context) => PageMenu1(),
        PageSignUp.getPageName(): (context) => PageSignUp(),
        PageLogIn.getPageName(): (context) => PageLogIn(),
      },
    );
  }
}
