import 'package:flutter/material.dart';
import 'package:egg_timer/egg_timer_button.dart';

class EggTimerControls extends StatefulWidget {
  @override
  _EggTimerControlsState createState() => new _EggTimerControlsState();
}

class _EggTimerControlsState extends State<EggTimerControls> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new EggTimerButton(
              icon: Icons.refresh,
              text: 'RESTART',
            ),
            new Expanded(child: new Container()),
            new EggTimerButton(
              icon: Icons.arrow_back,
              text: 'RESET',
            ),
          ],
        ),
        new EggTimerButton(
          icon: Icons.pause,
          text: 'PAUSE',
        ),
      ],
    );
  }
}
