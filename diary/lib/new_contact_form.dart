import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'models/contact.dart';

class NewContactForm extends StatefulWidget {
  @override
  _NewContactFormState createState() => _NewContactFormState();
}

class _NewContactFormState extends State<NewContactForm> {
  final _formKey = GlobalKey<FormState>();

  String _name;
  String _number;
  final _numberController = TextEditingController();
  final _nameController = TextEditingController();

  void addContact(Contact contact) {
    print('Name: ${contact.name}, Phone: ${contact.number}');
    final contactsBox = Hive.box('contacts');
    contactsBox.add(contact);
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
                    controller: _nameController,
                    cursorColor: Theme.of(context).accentColor,
                    decoration: InputDecoration(labelText: 'Name'),
                    onSaved: (value) => _name = value,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: _numberController,
                    cursorColor: Theme.of(context).accentColor,
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
              color: Theme.of(context).accentColor,
              onPressed: () {
                _formKey.currentState.save();
                final newContact = Contact(_name, int.parse(_number));
                addContact(newContact);
                _numberController.clear();
                _nameController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
