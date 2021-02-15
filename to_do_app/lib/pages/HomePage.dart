import 'package:flutter/material.dart';

import '../components/Task.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _focusNode = FocusNode();
  final _textController = TextEditingController();
  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          '',
          style: TextStyle(
            color: Color(0xFF5D61A2),
            fontSize: 32.0,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.history_rounded,
              color: Color(0xFF5D61A2),
              size: 30.0,
            ),
            onPressed: () => {},
            tooltip: 'To-Do history',
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert_sharp,
              color: Color(0xFF5D61A2),
              size: 30.0,
            ),
            onPressed: () => {},
          ),
        ],
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView(
                padding: EdgeInsets.all(8.0),
                children: <Widget>[
                  Text(
                    'Today',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Task(),
                      Task(),
                      Task(),
                      Task(),
                      Task(),
                      Task(),
                    ],
                  ),
                  // Text(
                  //   'Tomorrow',
                  //   style: TextStyle(
                  //     color: Theme.of(context).primaryColor,
                  //     fontSize: 24.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  // Column(
                  //   children: <Widget>[
                  //     Task(),
                  //     Task(),
                  //     Task(),
                  //     Task(),
                  //     Task(),
                  //     Task(),
                  //   ],
                  // ),
                  // Text(
                  //   'Upcoming',
                  //   style: TextStyle(
                  //     color: Theme.of(context).primaryColor,
                  //     fontSize: 24.0,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4.0,
                right: 4.0,
                bottom: 6.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: _buildToDoComposer(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToDoComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: TextField(
                  textInputAction: TextInputAction.go,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  controller: _textController,
                  onChanged: (String text) {
                    setState(() {
                      _isComposing = text.length > 0;
                      print(text);
                    });
                  },
                  onSubmitted: _isComposing ? _handleSubmitted : null,
                  decoration:
                      InputDecoration.collapsed(hintText: 'Add new to-do'),
                  focusNode: _focusNode,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 8.0,
              ),
              child: Row(
                children: [
                  // IconButton(
                  //   iconSize: 28.0,
                  //   icon: const Icon(
                  //     Icons.calendar_today,
                  //   ),
                  //   onPressed: _isComposing
                  //       ? () => _handleSubmitted(_textController.text)
                  //       : null,
                  // ),
                  IconButton(
                    iconSize: 36.0,
                    icon: const Icon(
                      Icons.playlist_add_rounded,
                    ),
                    onPressed: _isComposing
                        ? () => _handleSubmitted(_textController.text)
                        : null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    _focusNode.unfocus();

    setState(() {
      _isComposing = false;
    });
  }
}
