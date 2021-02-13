import 'package:flutter/material.dart';

import './components/Task.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Color(0xFF5D61A2),
        accentColor: Color(0xFF93CDD1),
        scaffoldBackgroundColor: Color(0xFFDCDCD7),
        buttonColor: Color(0xFFD598A0),
        splashColor: Color(0xFFA7D0B8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: ''),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color(0xFF5D61A2),
            fontSize: 32.0,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.assignment_turned_in,
              color: Color(0xFF5D61A2),
              size: 30.0,
            ),
            onPressed: () => {},
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
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
            Text(
              'Tomorrow',
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
            Text(
              'Upcoming',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
