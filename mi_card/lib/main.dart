import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.amber,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Text(
                'Chamin Jayasooriya',
                style: TextStyle(
                    fontFamily: 'Patrick Hand',
                    letterSpacing: 2.0,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    letterSpacing: 2.5,
                    fontSize: 22.0,
                    color: Colors.teal.shade50),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.amber,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    title: Text(
                      '+94 77 123 4567',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'Phone Number',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: Colors.teal.shade800,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.amber,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    title: Text(
                      'chamin.jayasooriya@outlook.com',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'Email Address',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: Colors.teal.shade800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
