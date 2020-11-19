import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Asia/Colombo');
    Map data = jsonDecode(response.body);

    // get properties from data
    String datetime = data['datetime'];
    String offsetHours = data['utc_offset'].substring(1, 3);
    String offsetMinutes = data['utc_offset'].substring(4, 6);

    //create a datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(
        hours: int.parse(offsetHours), minutes: int.parse(offsetMinutes)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading'),
    );
  }
}
