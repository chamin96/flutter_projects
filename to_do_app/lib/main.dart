import 'package:flutter/material.dart';

import './pages/HomePage.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Color(0xFF5D61A2),
        accentColor: Color(0xFF93CDD1),
        scaffoldBackgroundColor: Color(0xFFDCDCD7),
        buttonColor: Color(0xFFD598A0),
        splashColor: Color(0xFFA7D0B8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
