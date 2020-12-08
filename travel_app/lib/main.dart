import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(PlacesApp());
}

class PlacesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Free LK',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: HomePage(),
    );
  }
}
