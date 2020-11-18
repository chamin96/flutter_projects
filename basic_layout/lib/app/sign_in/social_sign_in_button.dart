import 'package:basic_layout/common_widgets/custom_raised_button.dart';
import 'package:flutter/material.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(assetName),
        Text(
          text,
          style: TextStyle(color: textColor, fontSize: 18.0),
        ),
        Opacity(
            opacity: 0.0,
            child: Image.asset(assetName)
        ),
      ],
    ),
    color: color,
    height: 40.0,
    onPressed: onPressed,
  );
}
