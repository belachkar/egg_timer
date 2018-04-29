import 'package:flutter/material.dart';

class EggTimerTimeDisplay extends StatefulWidget {
  @override
  _EggTimerTimeDisplayState createState() => new _EggTimerTimeDisplayState();
}

class _EggTimerTimeDisplayState extends State<EggTimerTimeDisplay> {  
  final TextStyle timeTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'BebasNeue',
    fontSize: 100.0,
    fontWeight: FontWeight.bold,
  );
  final EdgeInsets staticBarPadding = const EdgeInsets.only(top: 24.0);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: staticBarPadding,
      child: new Text(
        '40:25',
        textAlign: TextAlign.center,
        style: timeTextStyle,
      ),
    );
  }
}
