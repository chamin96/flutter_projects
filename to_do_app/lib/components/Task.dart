import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is todo title',
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
      subtitle: Text('This is todo description(optional)'),
      trailing: IconButton(
          icon: Icon(
            Icons.done_sharp,
            size: 32.0,
          ),
          onPressed: () => {print('done')}),
    );
  }
}
