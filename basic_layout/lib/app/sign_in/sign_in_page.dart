import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Container(
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.redAccent,
            child: SizedBox(
              width: 100.0,
              height: 100.0,
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: SizedBox(
              width: 100.0,
              height: 100.0,
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            child: SizedBox(
              width: 100.0,
              height: 100.0,
            ),
          )
        ],
      ),
    );
  }
}
