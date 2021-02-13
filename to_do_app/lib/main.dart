import 'package:flutter/material.dart';

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
        centerTitle: true,
        backgroundColor: Color(0xFFDCDCD7),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
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
