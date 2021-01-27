import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent(
      {@required this.customIcon,
      @required this.customText,
      @required this.textColor,
      @required this.textStyle});

  final IconData customIcon;
  final String customText;
  final Color textColor;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          customIcon,
          size: 80.0,
          color: textColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          customText,
          style: textStyle,
        ),
      ],
    );
  }
}
