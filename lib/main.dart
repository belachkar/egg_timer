import 'package:flutter/material.dart';
import 'egg_timer_time_disply.dart';
import 'egg_timer_controls.dart';
import 'egg_timer_dial.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    debugPaintSizeEnabled = true;

    return new MaterialApp(
      title: 'Flutter Egg Timer',
      theme: new ThemeData(
        fontFamily: 'BebasNeue',
      ),
      home: new Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            gradient: mainGradiant,
          ),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new EggTimerTimeDisplay(),
                new EggTimerDial(),
                new Expanded(child: new Container()),
                new EggTimerControls(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
