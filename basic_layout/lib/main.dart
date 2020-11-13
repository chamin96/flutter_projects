import 'package:flutter/material.dart';
import 'package:basic_layout/app/sign_in/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: SignInPage(),
    );
  }
}
