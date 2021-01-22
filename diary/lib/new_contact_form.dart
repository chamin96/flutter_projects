import 'package:flutter/material.dart';

import 'models/contact.dart';

class NewContactForm extends StatefulWidget {
  @override
  _NewContactFormState createState() => _NewContactFormState();
}

class _NewContactFormState extends State<NewContactForm> {
  final _formKey = GlobalKey<FormState>();

  String _name;
  String _number;

  void addContact(Contact contact) {
    print('Name: ${contact.name}, Age: ${contact.age}');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    onSaved: (value) => _name = value,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Phone Number'),
                    keyboardType: TextInputType.phone,
                    onSaved: (value) => _number = value,
                  ),
                ),
              ],
            ),
            RaisedButton(
              child: Text(
                'Add New Contact',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                _formKey.currentState.save();
                final newContact = Contact(_name, int.parse(_number));
                addContact(newContact);
              },
            ),
          ],
        ),
      ),
    );
  }
}
