import 'package:flutter/material.dart';
import 'package:responsive_ui/ui/home_view.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      home: HomeView(),
    );
  }
}