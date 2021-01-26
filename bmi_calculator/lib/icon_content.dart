import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.customIcon, @required this.customText});
  final IconData customIcon;
  final String customText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          customIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          customText,
          style: TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
