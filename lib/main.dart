import 'package:flutter/material.dart';
import 'package:flutterclockdemo/feature/clock/presentation/pages/clock_page.dart';
import 'package:flutterclockdemo/feature/contacs/presentation/pages/conatcts_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'Clock Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => ClockPage(),
      '/second': (context) => ContactPage(),
    },
  ));
}


