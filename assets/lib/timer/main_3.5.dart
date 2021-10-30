import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');

  return "$hours:$minutes:$seconds";
}

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  Stopwatch _stopwatch;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _timer = new Timer.periodic(new Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Stopwatch Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 100.0,
              color: Colors.lightBlue[300],
              shape: CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: Text(formatTime(_stopwatch.elapsedMilliseconds),
                    style: TextStyle(fontSize: 48.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    elevation: 5,
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                  ),
                  onPressed: handleStartStop,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                    child: Text(_stopwatch.isRunning ? 'Stop' : 'Start',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500,
                        )),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  elevation: 5,
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  _stopwatch.reset();
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                  child: Text('Reset',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
