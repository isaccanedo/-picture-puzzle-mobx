import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'puzzle.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: Puzzle(),
    );
  }
}