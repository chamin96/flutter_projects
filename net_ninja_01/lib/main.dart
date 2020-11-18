import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('knztnt Home'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: Text('Hey, welcome all!')
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {print('key pressed');},
        backgroundColor: Colors.teal,
      ),
    ),
  ));
}