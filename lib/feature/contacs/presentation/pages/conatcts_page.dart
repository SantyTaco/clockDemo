import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterclockdemo/feature/contacs/presentation/widgets/contact_card.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, index) {
            return ContactCard(index);
          }),
    );
  }
}


