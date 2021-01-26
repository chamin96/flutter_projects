import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'custom_card.dart';

const bottomBarHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('male');
                    },
                    child: CustomCard(
                      cardChild: IconContent(
                        customIcon: FontAwesomeIcons.mars,
                        customText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    cardChild: IconContent(
                      customIcon: FontAwesomeIcons.venus,
                      customText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(),
                ),
                Expanded(
                  child: CustomCard(),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomBarHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
