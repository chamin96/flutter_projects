import 'package:basic_layout/app/sign_in/sign_in_button.dart';
import 'package:basic_layout/app/sign_in/social_sign_in_button.dart';
import 'package:basic_layout/common_widgets/custom_raised_button.dart';
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
      backgroundColor: Colors.grey[100],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          SizedBox(
            height: 48.0,
          ),
          SocialSignInButton(
            text: 'Sign in with Google',
            textColor: Colors.redAccent,
            color: Colors.white,
            assetName: 'images/google.png',
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SocialSignInButton(
            text: 'Sign in with Facebook',
            textColor: Colors.blue[900],
            color: Colors.white,
            assetName: 'images/facebook.png',
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SocialSignInButton(
            text: 'Sign in with Email',
            textColor: Colors.green,
            color: Colors.white,
            assetName: 'images/email-open.png',
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'or',
            style: TextStyle(fontSize: 15.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          SignInButton(
            text: 'Go Anonymous',
            textColor: Colors.white,
            color: Colors.grey[700],
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
