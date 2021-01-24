import 'package:diary/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'contact_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(ContactAdapter());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kontacts',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.blueGrey,
      ),
      home: FutureBuilder(
        future: Hive.openBox('contacts'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return ContactPage();
            }
          }
          // Although opening a Box takes a very short time,
          // we still need to return something before the Future completes.
          else
            return Scaffold(
              body: Center(
                child: SpinKitFadingCircle(
                  color: Theme.of(context).primaryColor,
                  size: 50.0,
                  duration: Duration(milliseconds: 100),
                ),
              ),
            );
        },
      ),
    );
  }

  void dispose() {
    Hive.close();
    super.dispose();
  }
}
