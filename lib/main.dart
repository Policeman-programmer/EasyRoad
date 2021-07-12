import 'package:flutter/material.dart';
import 'Instruction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text('EasyRoad'),
        ),
        body: Instruction(),
      ),
    );
  }
}
