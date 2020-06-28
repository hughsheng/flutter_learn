import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/NewPage.dart';

import 'CountEntrance.dart';

class CountAddState extends State<CountAdd> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('点击加号增加点击次数'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('点击次数'),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
                child: Text('open new page'),
                textColor: Colors.blue,
                onPressed: () async {
                  var result = await Navigator.pushNamed(context, 'new_page',arguments: "send data");
                  print('$result');
                })
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _increment,
        tooltip: '点我增加点击次数',
        child: new Icon(Icons.add),
      ),
    );
  }

  //增加点击次数
  void _increment() {
    setState(() {
      _counter++;
    });
  }
}
