import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool isDone = false;
  String taskTitle = 'This is todo title';
  String taskDesc = 'This is todo description(optional)';

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
      subtitle: Text(taskDesc),
      trailing: IconButton(
        icon: Icon(
          Icons.done_sharp,
          color: isDone ? Colors.indigoAccent : Colors.blueGrey,
          size: 32.0,
        ),
        onPressed: () {
          setState(() {
            isDone = !isDone;
          });
        },
      ),
    );
  }
}
