import 'package:flutter/material.dart';
import 'package:fluttery/framing.dart';
import 'egg_timer_time_disply.dart';
import 'egg_timer_button.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Egg Timer',
      theme: new ThemeData(
        fontFamily: 'BebasNeue',
      ),
      home: new Scaffold(
        body: new Center(
          child: new Column(
            children: <Widget>[
              new EggTimerTimeDisplay(),
              new RandomColorBlock(
                width: double.infinity,
                child: new Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: new AspectRatio(
                    aspectRatio: 1.0,
                    child: new RandomColorBlock(
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              new Expanded(child: new Container()),
              new Row(
                children: <Widget>[
                  new EggTimerButton(
                    icon: Icons.pause,
                    text: 'Pause',
                  ),
                  new Expanded(child: new Container()),
                  new EggTimerButton(
                    icon: Icons.pause,
                    text: 'Pause',
                  ),
                ],
              ),
              new EggTimerButton(
                icon: Icons.pause,
                text: 'Pause',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
