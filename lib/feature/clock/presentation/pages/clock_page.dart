import 'dart:async';

import 'package:flutter/material.dart';

class ClockPage extends StatefulWidget {
  ClockPage({Key key}) : super(key: key);

  @override
  _ClockPageState createState() => new _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  int _startTime = new DateTime.now().millisecondsSinceEpoch;
  int _numMilliseconds = 0;
  int _numSeconds = 0;
  int _numMinutes = 0;
  var iconButton = Icons.play_arrow;
  Timer timerStart;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: clockAppBar(),
      body: clockBodyText(),
      floatingActionButton: clockFloatingButton(context),
    );
  }

  FloatingActionButton clockFloatingButton(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          verifyClockPlayed(context);
        },
        backgroundColor: Colors.purple,
      child: Icon(iconButton),
    );
  }

  Center clockBodyText() {
    return Center(
        child: Text('$_numMinutes : $_numSeconds : $_numMilliseconds'),
      );
  }

  AppBar clockAppBar() {
    return AppBar(
        title: Text('Clock Demo'),
        backgroundColor: Colors.purple,
      );
  }

  void verifyClockPlayed(BuildContext context) {
     if(iconButton == Icons.stop) {
      iconButton = Icons.play_arrow;
      timerStart.cancel();
      Navigator.pushNamed(context, '/second');

    } else {
      iconButton = Icons.stop;
      timerStart = startPeriodicTimer();
    }
  }

  Timer startPeriodicTimer() {
    return Timer.periodic(new Duration(milliseconds: 10), (Timer timer) {
              int timeDifference = new DateTime.now().millisecondsSinceEpoch - _startTime;
              double seconds = timeDifference / 1000;
              double minutes = seconds / 60;
              double leftoverSeconds = seconds % 60;
              double leftoverMillis = timeDifference % 1000 / 10;
              setState(() {
                _numMilliseconds = leftoverMillis.floor();
                _numSeconds = leftoverSeconds.floor();
                _numMinutes = minutes.floor();
              });
            });
  }
}