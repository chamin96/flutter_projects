// import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('knztnt Home'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              child: Image.asset('images/nav-brand-light.png'),
              width: 200.0,
              height: 150.0,
            ),
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add_comment, color: Colors.blue,),
              label: Text('Contact Us'),
              color: Colors.white,
            ),
            Text(
              'Hello, welcome all!',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  fontFamily: 'IndieFlower'),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          child: Text(
            'Click',
            style: TextStyle(
                fontFamily: 'IndieFlower',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            print('key pressed');
          },
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
