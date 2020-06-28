import 'package:flutter/material.dart';
import 'package:flutterapp/CountEntrance.dart';
import 'RandomWordsState.dart';

void main() => runApp(new Count());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
          primaryColor: Colors.black,
          brightness: Brightness.dark,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}
