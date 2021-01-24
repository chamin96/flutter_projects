import 'package:diary/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'new_contact_form.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: _buildListView()),
            NewContactForm(),
          ],
        ));
  }

  Widget _buildListView() {
    final contactsBox = Hive.box('contacts');
    return ValueListenableBuilder(
      valueListenable: contactsBox.listenable(),
      builder: (context, contactsBox, widget) {
        return ListView.builder(
          itemCount: contactsBox.length,
          itemBuilder: (context, index) {
            final contact = contactsBox.getAt(index) as Contact;
            return ListTile(
              title: Text(
                contact.name,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text(
                contact.number.toString(),
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 24.0,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                    ),
                    iconSize: 18.0,
                    onPressed: () {
                      //TODO: implement edit screen and functionality
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                    ),
                    iconSize: 18.0,
                    onPressed: () {
                      contactsBox.deleteAt(index);
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
