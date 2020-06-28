import 'package:flutter/material.dart';
import 'package:flutterapp/NewPage.dart';

import 'CountAddState.dart';

class Count extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'countAdd',
      initialRoute: 'home',
      theme: new ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
      ),
      routes: {
        'home': (context) => CountAdd(),
        'new_page':(context)=>NewPage(title: 'this is new page',),
      },
    );
  }
}

class CountAdd extends StatefulWidget {
  @override
  createState() => new CountAddState();
}
