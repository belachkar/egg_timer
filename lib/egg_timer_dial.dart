import 'package:flutter/material.dart';

const Color GRADIANT_TOP = const Color(0xFFF5F5F5);
const Color GRADIANT_BOTTOM = const Color(0xFFE8E8E8);

final LinearGradient mainGradiant = new LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [GRADIANT_TOP, GRADIANT_BOTTOM],
);

final BoxShadow cercleShadow = const BoxShadow(
  color: const Color(0x44000000),
  blurRadius: 2.0,
  spreadRadius: 1.0,
  offset: const Offset(0.0, 1.0),
);

class EggTimerDial extends StatefulWidget {
  @override
  _EggTimerDialState createState() => new _EggTimerDialState();
}

class _EggTimerDialState extends State<EggTimerDial> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      child: new Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: new AspectRatio(
          aspectRatio: 1.0,
          child: new Container(
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              gradient: mainGradiant,
              boxShadow: [
                cercleShadow,
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(65.0),
              child: new Container(
                padding: const EdgeInsets.all(10.0),
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: mainGradiant,
                  boxShadow: [
                    cercleShadow,
                  ],
                ),
                child: new Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(
                      color: const Color(0xFFDFDFDF),
                      width: 1.5,
                    ),
                  ),
                  child: new Center(
                    child: new Image.network(
                      'https://flutter.io/images/flutter-mark-square-100.png',
                      width: 50.0,
                      height: 50.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
