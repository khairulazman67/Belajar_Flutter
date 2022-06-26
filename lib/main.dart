import 'package:flutter/material.dart';
import 'package:flutter_project/pages/debit_page.dart';
import 'package:flutter_project/pages/kredit_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/debit_page.dart';
import 'pages/kredit_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/debitPage': (BuildContext context) => const DebitPage(),
        '/berandaPage': (BuildContext context) => HomePage(),
        '/kreditPage': (BuildContext context) => const kreditPage(),
        '/loginPage': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
