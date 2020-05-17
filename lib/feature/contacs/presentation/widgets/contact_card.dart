import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  int _contactNumber;

  ContactCard(this._contactNumber);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/Contacts-icon.png'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        title: Text('Contact ${_contactNumber}'),
      ),
    );
  }
}