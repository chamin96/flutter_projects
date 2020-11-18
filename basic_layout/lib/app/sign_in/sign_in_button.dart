import 'package:basic_layout/common_widgets/custom_raised_button.dart';
import 'package:flutter/material.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : assert(text != null),
        super(
          child: Text(text, style: TextStyle(color: textColor, fontSize: 16.0)),
          color: color,
          height: 40.0,
          onPressed: onPressed,
        );
}
